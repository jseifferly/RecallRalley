//sdram_driver    cp      0x80000032      sdram_write
//                cp      0x80000033      sdram_address
//                cp      0x80000030      num__1
//check1          cp      sdram_response  0x80000031
//                bne     check1   0x80000031  num__1
//                bne      read    sdram_write  num__0
//                cp      sdram_data_read     0x80000035
//read            cp      0x80000030      num__0
//                bne     write    sdram_write  num__1
//                cp      0x80000034      sdram_data_write
//write           bne     check1   sdram_response  num__0
//                ret     sdram_ret

sdram_driver    cp      0x80000032      sdram_write
                cp      0x80000033      sdram_address
                cp      0x80000030      num__1
check1          be      check1          num__0      0x80000031
                be      write1     sdram_write      num1
                cp      sdram_data_read      0x80000035
                cp      0x80000030      num__0
                ret     sdram_ret
write1          cp      0x80000034      sdram_data_write
                cp      0x80000030      num__0
                ret     sdram_ret


sdram_ret      0
sdram_write     0
sdram_address   0
sdram_data_write    0
sdram_data_read     0
sdram_response      0
num__0    0
num__1    1