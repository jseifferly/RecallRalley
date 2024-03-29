mic             cp      0x80000050      num1
check           cp      respon          0x80000051
                bne     check           respon          num1  
                cp      param           0x80000052
                bne     returns         num0            num0
                cp      0x80000050      num0
check2          cp      respon          0x80000051
                bne     check2          respon          num0
returns         ret     ret_ra







num1            1
num0            0
param           0
ret_ra          0
respon          0

