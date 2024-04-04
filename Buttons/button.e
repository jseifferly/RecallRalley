button      
                    //Get values from driver
                    call    touch_driver      touch_ra
                    cp      button_press      touch_pressed
                    cp      button_x          touch_x 
                    cp      button_y          touch_y

                    be      butEasy           button_diff   button_num1
                    be      butMid            button_diff   button_num2
                    be      butHard           button_diff   button_num3

//Easy diff

butEasy             blt     butEasy_l         button_x      button_halfx
                    cp      button_act        button_num2
                    ret     button_ra
butEasy_l           cp      button_act        button_num1           
                    ret     button_ra
           
//Medium diff   

butMid              blt     butMid_l          button_x     button_halfx
                    blt     butMid_rt         button_y     button_halfy
butMid_rb           cp      button_act        button_num4
                    ret     button_ra
butMid_rt           cp      button_act        button_num2
                    ret     button_ra
butMid_l            blt     butMid_lt         button_y     button_halfy
butMid_lb           cp      button_act        button_num3
                    ret     button_ra
butMid_lt           cp      button_act        button_num1
                    ret     button_ra

//Hard diff

butHard             div     button_thirdx     screen_size_x  button_num3
                    blt     butHard_m         button_thirdx  button_x   
                    blt     butHard_lb        button_halfy   button_y
                    cp      button_act        button_num1
                    cp      button_thirdx     button_num0
                    ret     button_ra
butHard_lb          cp      button_act        button_num4
                    cp      button_thirdx     button_num0
                    ret     button_ra

butHard_m           mult    button_thirdx     button_thirdx  button_num2 
                    blt     butHard_r         button_thirdx  button_x 
                    blt     butHard_mb        button_halfy   button_y
                    cp      button_act        button_num2
                    cp      button_thirdx     button_num0
                    ret     button_ra
butHard_mb          cp      button_act        button_num5
                    cp      button_thirdx     button_num0
                    ret     button_ra

butHard_r           blt     butHard_rb        button_halfy   button_y
                    cp      button_act        button_num3
                    cp      button_thirdx     button_num0
                    ret     button_ra
butHard_rb          cp      button_act        button_num6
                    cp      button_thirdx     button_num0
                    ret     button_ra








button_diff         0
button_x            0
button_y            0
button_press        0
button_num2         2
button_num3         3
button_num4         4
button_num1         1
button_num5         5
button_num6         6
button_num0         0
button_halfx        319
button_halfy        239
button_thirdx       0
button_act          0
button_ra           0

#include touch_driver.e
