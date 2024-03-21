        call    draw_screen     screen_ra

loop    call    button          button_ra
        cp      flash_but_num   button_act  
        call    flash_button    flash_ra
        be      loop            0               0


num     0
clock   0

#include button.e
#include draw_screen.e
#include flash_button.e