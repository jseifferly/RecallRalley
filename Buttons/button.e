button
            //Get values from driver
            call    touch_driver      touch_ra
            cp      button_press      touch_pressed
            cp      button_x          touch_x 
            cp      button_y          touch_y

            bne     on                button_press button_num0
            cp      0x80000001        button_num0
            be      check             0            0
on          cp      0x80000001        button_num1
            //Check if on left or right    
check       blt     left              button_x     button_halfx

            //Check if top or bot on right
            blt     right_top         button_y     button_halfy
right_bot   cp      button_act        button_num4
            be      end               0            0
right_top   cp      button_act        button_num2
            be      end               0            0

            //Check if top or bot on left
left        blt     left_top          button_y     button_halfy
left_bot    cp      button_act        button_num3
            be      end               0            0
left_top    cp      button_act        button_num1
            be      end               0            0

end         ret     button_ra

button_x            0
button_y            0
button_press        0
button_num2         2
button_num3         3
button_num4         4
button_num1         1
button_num0         0
button_halfx        319
button_halfy        239
button_act          0
button_ra           0

#include touch_driver.e
