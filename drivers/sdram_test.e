sdram_test

//start   be      end     i    size
//        cp      sd_write    num0
//        cp      sd_address  i
//        call    sd_card      sd_ra
//        cp      data_sd         sd_data_read
//        cp      sdram_data_write        sd_data_read
//        cp      sdram_write     num1
//        cp      sdram_address  i
//        call    sdram_driver    sdram_ret
//        cp      sdram_write     num0
//        call    sdram_driver    sdram_ret
//        cp      data_sdram      sdram_data_read
//        be      end    data_sd        data_sdram
//        add     i       i       num1
//        be      start   0       0
//light   cp      0x80000002      num1
//end     halt

start   be      next     i    size
        cp      sd_write    num0
        cp      sd_address  i
        call    sd_card      sd_ra
        cp      data        sd_data_read
        cp      sdram_write     num1
        cp      sdram_address      i
        cp      sdram_data_write     data
        add     i       i       num1
        be      start   0       0
next    be      end     j       size
        cp      sdram_write    num0
        cp      sdram_address   j
        call    sdram_driver    sdram_ret
        cp      data    sdram_data_read
        cp      0x80000001  data
        add     j       j       num1
        be      next    0       0
end     halt

i       0
j       0
size    1000000
data    0
num0    0
num1    1

#include sdram_card_driver.e
#include sd_card_driver.e