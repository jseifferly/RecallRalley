mic             cp     0x80000050       random_num1
random_check    cp     random_respon    0x80000051
                bne    random_check     random_respon       random_num1  
                cp     random_param     0x80000052
                bne    returns          random_num0         random_num0
                cp     0x80000050       random_num0
random_check2   cp     random_respon    0x80000051
                bne    random_check2    random_respon       random_num0
returns         ret    random_ret_ra







random_num1      1
random_num0      0
random_param     0
random_ret_ra    0
random_respon    0

