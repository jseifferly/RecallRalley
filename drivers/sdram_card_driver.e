sdram_driver    cp      0x80000032      sdram_write
                cp      0x80000033      sdram_address
                cp      0x80000034      sdram_data_write
                cp      0x80000030      num__1
sdram_check     be      sdram_check          num__0      0x80000031
                be      write1     sdram_write      num__1
                cp      sdram_data_read      0x80000035
                cp      0x80000030      num__0
sdram_check2    bne     sdram_check2      0x80000031      num__0
                ret     sdram_ret
write1          cp      0x80000034      sdram_data_write
                cp      0x80000030      num__0
                bne     sdram_check2      0x80000031      num__0
                ret     sdram_ret

sdram_ret      0
sdram_write     0
sdram_address   0
sdram_data_write    0
sdram_data_read     0
sdram_response      0
num__0    0
num__1    1
