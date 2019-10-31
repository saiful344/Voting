 $file = json_encode($this->input->post('attachments'));
        
        foreach ($file as $key => $attachment) {
          
        }
        if(strpos($to, $this->config->item('account_module_email')) !== FALSE) {
            $subject = $this->input->post('Subject');
            $body = $this->input->post('body-html');
            $attachments = $_FILES;
            $success = TRUE;
            $file_names = array();
            $biggest_file = [];
            $uploaded = [];
            echo "#attachment : " .json_encode($attachments);

            $allFile = [];
            $allFileExt = [];
            foreach ($attachments as $key => $attachment) {
                //file_put_contents('log_account_key_'.$key.'.txt', print_r($key, true));

                //set all file attachment to one variabel
                array_push($allFile, $attachment['name']);
                array_push($allFileExt, strtolower(pathinfo($attachment['name'], PATHINFO_EXTENSION)));

                if($_FILES[$key]['error'] == UPLOAD_ERR_OK) {
                    $format = explode('.', $attachment['name']);
                    $clearFilename = preg_replace('/\s+/', '_', $attachment['name']);
                    $clearFilename = str_replace(array('(','.',')',' ','-'),"_" , $clearFilename);
                    $config['file_name'] = "accounts_".$key.uniqid()."_".date('Y_m_d_H_i_s');
                    $file_names[$key] = $config['file_name'].'.'.$format[sizeof($format)-1];
                    $original_file_names[$key] = $attachment['name'];
                    if (!is_dir('assets/upload/files')) {
                        mkdir('assets/upload/files', 0777, true);
                    }
                    $config['upload_path'] = './assets/upload/files/';
                    $config['allowed_types'] = '*';
                    $config['overwrite'] = true;
                    $config['max_size'] = '51200';
                    $config['remove_spaces'] = true;
                    $this->load->library('upload', $config);
                    $this->upload->initialize($config);
                    if ($this->upload->do_upload($key)) {
                        $file_data = $this->upload->data();
                        //file_put_contents('log_account_uploaded_key_'.$key.'.txt',$file_data['file_name'] );
                        $uploaded[] = [
                            'name' => $file_data['file_name'], 
                            'original' => $attachment['name']
                        ];
                        // success
                        // if(empty($biggest_file) || $biggest_file['size'] < $file_data['size']) {
                        //     $biggest_file = [
                        //         'name' => $file_data['file_name'], 
                        //         'size' => $file_data['size'],
                        //         'original' => $attachment['name']
                        //     ];
                        // } 
                    } else {
                        file_put_contents('log_account_fail_'.$key.'.txt', print_r($this->upload->display_errors(), true));
                    }
                }
            }

            //insert record all email
            if (in_array('pdf', $allFileExt)){
                $statusEmail = 'Record';
            } else {
                $statusEmail = 'No Record';
            }

            
            $dataEmail = [
                'date_received' => date('Y-m-d'),
                'email_from' => $from,
                'email_to' => $to,
                'email_subject' => empty($subject) ? "" : $subject,
                'email_body' => empty($body) ? "" : trim($body),
                'file_list' => json_encode($allFile),
                'created_at' => date('Y-m-d H:i:s'),
                'status' => $statusEmail,
            ];

            if ($createEmail = $this->account_email_model->create($dataEmail)){

                $detail = $this->account_email_model->get_detail($createEmail);

                $ac_log = array(
                    'user' => 1,
                    'time' => date('Y-m-d H:i:s'),
                    'type' => 'Create',
                    'module' => 'account',
                    'description' => 'Create Account Email',
                    'detail_after' => json_encode($detail),
                    'detail' => json_encode($detail)
                );
                $this->user_activity_model->insert_log($ac_log);
            }
            //end record all email

            print_r($uploaded);

            //only process if file uploaded
            if(!empty($uploaded)) {
                $check_supplier = $this->supplier_model->get_detail(['email' => $from]);
                if($check_supplier){
                    echo "#check sup : " .json_encode($check_supplier);
                } else {
                    echo "#check sup : " .$this->db->last_query();
                }

                if(count($uploaded) >= 1) {
                    //delete file that are not the bigest file
                    $i = 0;
                    foreach ($uploaded as $upldd) {
                        // if($upldd != $biggest_file['name']) {
                        //     if(file_exists('./assets/upload/files/' . $upldd)) {
                        //         unlink('./assets/upload/files/' . $upldd);
                        //     } 
                        // }

                        $file = './assets/upload/files/' . $upldd['name'];
                        $ext  = pathinfo($file, PATHINFO_EXTENSION);

                        if (strtolower($ext) == 'pdf'){
                            $data = [
                                'status' => 'Unmatched',
                                'date_received' => date('Y-m-d'),
                                'email_from' => $from,
                                'supplier' => $check_supplier ? $check_supplier['id']  : NULL,
                                'email_to' => $to,
                                'email_subject' => empty($subject) ? "" : $subject,
                                'email_body' => empty($body) ? "" : trim($body),
                                'file' => $upldd['name'],
                                'original_file_name' => $upldd['original'],
                                'created_at' => date('Y-m-d H:i:s')
                            ];

                            echo "data = " .json_encode($data);

                            //insert to db
                            if($create = $this->account_model->create($data)) {
                                echo "created";
                                //created
                                file_put_contents('log_account_success.txt', print_r($this->db->last_query(), true));

                                //set data to create comment
                                $nd = [
                                    'account' => $create,
                                    'comment' => 'Invoice automatically created via email from '.$from,
                                    'type' => 'Auto',
                                    'created_at' => date('Y-m-d H:i:s'),
                                    'created_by' => '',
                                ];

                                if ($create = $this->account_model->create_comment($nd)) {

                                        $detail = $this->account_model->comment_list($create);

                                        $ac_log = array(
                                            'user' => 1,
                                            'time' => date('Y-m-d H:i:s'),
                                            'type' => 'Create',
                                            'module' => 'account',
                                            'description' => 'Create Comment account detail',
                                            'detail_after' => json_encode($detail),
                                            'detail' => json_encode($nd)
                                        );
                                        $this->user_activity_model->insert_log($ac_log);
                                }

                                
                            } else {
                                echo "failed";
                                if(file_exists('./assets/upload/files/' . $data['file'])) {
                                    unlink('./assets/upload/files/' . $data['file']);//delete file from directory
                                } 
                            }
                        } else {
                            if(file_exists('./assets/upload/files/' . $upldd['name'])) {
                                unlink('./assets/upload/files/' . $upldd['name']);
                            } 
                        }

                        $i++;

                    }
                }

                // //insert to db
                // if($this->account_model->create($data)) {
                //     echo "created";
                //     //created
                //     file_put_contents('log_account_success.txt', print_r($this->db->last_query(), true));
                // } else {
                //     echo "failed";
                //     if(file_exists('./assets/upload/files/' . $data['file'])) {
                //         unlink('./assets/upload/files/' . $data['file']);//delete file from directory
                //     } 
                // }
            } else {
                //no file uploaded
                echo "no file uploaded";
            }

        } else {
            echo "Invalid To Email";
        }
    }


       
      }