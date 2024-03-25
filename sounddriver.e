sounddriver    cp      0x80000042      param
                cp      0x80000040      num_1
sounddriver_check           cp      respon          0x80000041
                bne     sounddriver_check           respon    num_1  
                cp      0x80000040      num0
sounddriver_check2          cp      respon          0x80000041
                bne     sounddriver_check2          respon    num0
                ret     driv_ra
num_1           1
num0            0
param           0
driv_ra         0
respon          0