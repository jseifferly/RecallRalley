DeviceDriver    cp      0x80000042      param
                cp      0x80000040      num_1
check           cp      respon          0x80000041
                bne     check           respon    num_1  
                cp      0x80000040      num0
check2          cp      respon          0x80000041
                bne     check2          respon    num0
                ret     driv_ra
num_1           1
num0            0
param           0
driv_ra         0
respon          0
