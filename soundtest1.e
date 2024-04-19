sound_test_loop      be      do_ret      do   do_size
        cp      sdram_write     sound_test_num0
        cp      sdram_address   do
        call    sdram_driver   sdram_ret
        cp      sound_param     sdram_data_read
        call    sounddriver     sound_ra
        add     do   do   sound_test_num1
        be      sound_test_loop  0   0
do_ret  cp      do      sound_test_num0
        ret     soundtest_ra

sound_test_loop2      be      re_ret    re   re_size
        cp      sdram_write     sound_test_num0
        cp      sdram_address   re
        call    sdram_driver   sdram_ret
        cp      sound_param     sdram_data_read
        call    sounddriver     sound_ra
        add     re      re   sound_test_num1
        be      sound_test_loop2  0   0
re_ret  cp      re      do_beg
        ret     soundtest_ra

sound_test_loop3      be      mi_ret    mi   mi_size
        cp      sdram_write     sound_test_num0
        cp      sdram_address   mi
        call    sdram_driver   sdram_ret
        cp      sound_param     sdram_data_read
        call    sounddriver     sound_ra
        add     mi      mi   sound_test_num1
        be      sound_test_loop3  0   0
mi_ret  cp      mi      re_beg
        ret     soundtest_ra

sound_test_loop4      be      fa_ret    fa   fa_size
        cp      sdram_write     sound_test_num0
        cp      sdram_address   fa
        call    sdram_driver   sdram_ret
        cp      sound_param     sdram_data_read
        call    sounddriver     sound_ra
        add     fa      fa   sound_test_num1
        be      sound_test_loop4  0   0
fa_ret  cp      fa      mi_beg
        ret     soundtest_ra

sound_test_loop5      be      sol_ret    sol   sol_size
        cp      sdram_write     sound_test_num0
        cp      sdram_address   sol
        call    sdram_driver   sdram_ret
        cp      sound_param     sdram_data_read
        call    sounddriver     sound_ra
        add     sol      sol   sound_test_num1
        be      sound_test_loop5  0   0
sol_ret cp      sol      fa_beg
        ret     soundtest_ra

sound_test_loop6      be      la_ret    la   la_size
        cp      sdram_write     sound_test_num0
        cp      sdram_address   la
        call    sdram_driver   sdram_ret
        cp      sound_param     sdram_data_read
        call    sounddriver     sound_ra
        add     la      la   sound_test_num1
        be      sound_test_loop6  0   0
la_ret  cp      la      sol_beg
        ret     soundtest_ra


soundtest_ra   0
sound_test_num0 0
sound_test_num1 1
do  0
do_size 3989
do_beg  0
re      3989
re_beg  3989
re_size 5952
mi      7952
mi_beg  7952
mi_size 9932
fa      11932
fa_beg  11932
fa_size 13912
sol     15912
sol_beg 15912
sol_size    17922
la      19922
la_beg  19922
la_size     21926

#include sounddriver.e
#include sdram_card_driver.e
