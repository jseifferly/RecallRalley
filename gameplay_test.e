        call    draw_screen     screen_ra

pattern cpfa    pat_num         pat             i
        be      user            i               pat_len
        cp      flash_but_num   pat_num
        call    flash_button    flash_ra
        add     i               i               num1
        cp      j               num0
stall   be      pattern         j               num600000
        add     j               j               num1
        be      stall           0               0
       
user    call    button          button_ra
        cp      0x80000004      button_act
        cp      flash_but_num   button_act  
        call    flash_button    flash_ra
        be      check           button_press    num_1
        be      user            0               0

check   cpfa    pat_num         pat             k
        bne     end             button_act      pat_num
        add     k               k               num_1
        be      user            0               0


end     call    clear_screen    clear_ra
        halt



num_0           0
num_1           1
i               0
j               0
k               0
num0            0
num1            1
num600000       600000
pat_num         0
pat_len         5
pat             1
                2
                1
                4
                3

#include button.e
#include flash_button.e