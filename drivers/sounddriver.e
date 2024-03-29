sounddriver         cp      0x80000042          sound_param
                    cp      0x80000040          sound_num_1
sounddriver_check   cp      sound_respon        0x80000041
                    bne     sounddriver_check   sound_respon    sound_num_1  
                    cp      0x80000040          sound_num0
sounddriver_check2  cp      sound_respon        0x80000041
                    bne     sounddriver_check2  sound_respon    sound_num0
                    ret     sound_ra
sound_num_1      1
sound_num0       0
sound_param      0
sound_ra         0
sound_respon     0
