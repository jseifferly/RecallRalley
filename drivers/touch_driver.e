touch_driver      cp  0x800000e0       touch_num1
touch_wait        cp  touch_response   0x800000e1
                  bne touch_wait       touch_response  touch_num1
                  cp  touch_x          0x800000e2
                  cp  touch_y          0x800000e3
                  cp  touch_pressed    0x800000e4
                  cp  0x800000e0       touch_num0
touch_wait2       cp  touch_response   0x800000e1
                  bne touch_wait2      touch_response  touch_num0
                  ret touch_ra

touch_response  0
touch_x         0
touch_y         0
touch_pressed   0
touch_ra        0
touch_num1      1
touch_num0      0
