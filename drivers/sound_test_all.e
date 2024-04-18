sound_test_all

start   be      do          i   size
        cp      sd_write    sound_test_num0    
        cp      sd_address  i
        call    sd_card  sd_ra
        cp      data    sd_data_read
        cp      sdram_write     sound_test_num1
        cp      sdram_address   i
        cp      sdram_data_write    data
        call    sdram_driver   sdram_ret
        add     i       i       sound_test_num1
        be      start   0   0
do      be      pre_re          j   do_size
        cp      sdram_write     sound_test_num0
        cp      sdram_address   j
        call    sdram_driver   sdram_ret
        cp      sound_param     sdram_data_read
        call    sounddriver     sound_ra
        add     j   j   sound_test_num1
        be      do  0   0
pre_re  add     j   j   sound_test_num1
re      be      pre_mi          j   re_size
        cp      sdram_write     sound_test_num0
        cp      sdram_address   j
        call    sdram_driver   sdram_ret
        cp      sound_param     sdram_data_read
        call    sounddriver     sound_ra
        add     j   j   sound_test_num1
        be      re  0   0
pre_mi  add     j   j   sound_test_num1
mi      be      pre_fa          j   mi_size
        cp      sdram_write     sound_test_num0
        cp      sdram_address   j
        call    sdram_driver   sdram_ret
        cp      sound_param     sdram_data_read
        call    sounddriver     sound_ra
        add     j   j   sound_test_num1
        be      mi  0   0
pre_fa  add     j   j   sound_test_num1
fa      be      pre_sol         j   fa_size
        cp      sdram_write     sound_test_num0
        cp      sdram_address   j
        call    sdram_driver   sdram_ret
        cp      sound_param     sdram_data_read
        call    sounddriver     sound_ra
        add     j   j   sound_test_num1
        be      fa  0   0
pre_sol add     j   j   sound_test_num1
sol     be      pre_la          j   sol_size
        cp      sdram_write     sound_test_num0
        cp      sdram_address   j
        call    sdram_driver   sdram_ret
        cp      sound_param     sdram_data_read
        call    sounddriver     sound_ra
        add     j   j   sound_test_num1
        be      sol  0   0
pre_la  add     j   j   sound_test_num1
la      be      end             j   la_size
        cp      sdram_write     sound_test_num0
        cp      sdram_address   j
        call    sdram_driver   sdram_ret
        cp      sound_param     sdram_data_read
        call    sounddriver     sound_ra
        add     j   j   sound_test_num1
        be      la  0   0
end     halt

sound_test_num0     0
sound_test_num1     1
i   0
j   0
data    0
size    23931
do_size 3989
re_size 7953
mi_size 11934
fa_size 15915
sol_size    19926
la_size     23931

#include sdram_card_driver.e
#include sd_card_driver.e
#include sounddriver.e