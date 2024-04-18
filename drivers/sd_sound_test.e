sd_sound_test

start   be      next     i    size
        cp      sd_write    num0
        cp      sd_address  i
        call    sd_card      sd_ra
        cp      data        sd_data_read
        cp      sdram_write     num1
        cp      sdram_address      i
        cp      sdram_data_write     data
        call    sdram_driver    sdram_ret
        add     i       i       num1
        be      start   0       0
next    be      end     j       size
        cp      sdram_write    num0
        cp      sdram_address   j
        call    sdram_driver    sdram_ret
        cp      sound_param    sdram_data_read
        call    sounddriver    sound_ra
        add     j       j       num1
        be      next    0       0
end     halt

i       0
j       0
size    3989
data    0
num0    0
num1    1

#include sdram_card_driver.e
#include sd_card_driver.e
#include sounddriver.e