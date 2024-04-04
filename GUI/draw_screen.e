draw_screen         
screen_reset        call        clear_screen        clear_ra
                    cp          screen_x1           screen_num0
                    cp          screen_x2           screen_num0
                    cp          screen_y1           screen_num0
                    cp          screen_y2           screen_num0
                    cp          screen_i            screen_num0
                    cp          screen_j            screen_num1


                    be          draw_easy           screen_diff             screen_num1
                    cp          screen_y1           screen_num0
                    div         screen_y2           screen_size_y           screen_num2
                    mult        screen_num_but      screen_diff             screen_num2

screen_loop1        be          screen_bot          screen_i                screen_diff
                    cp          screen_x1           screen_x2
                    div         screen_x2           screen_size_x           screen_diff
                    mult        screen_x2           screen_x2               screen_j

                    cp          vga_x1              screen_x1
                    cp          vga_y1              screen_y1
                    cp          vga_x2              screen_x2
                    cp          vga_y2              screen_y2
                    cpfa        vga_color_write     screen_array            screen_i
                    cp          vga_write           screen_num1
                    call        vga_driver          vga_ra
                    
                    add         screen_i            screen_i                screen_num1
                    add         screen_j            screen_j                screen_num1
                    be          screen_loop1        0                       0




screen_bot          cp          screen_y1           screen_y2
                    cp          screen_y2           screen_size_y
                    cp          screen_x1           screen_num0
                    cp          screen_x2           screen_num0
                    cp          screen_j            screen_num1
screen_loop2        be          screen_end          screen_i                screen_num_but
                    cp          screen_x1           screen_x2
                    div         screen_x2           screen_size_x           screen_diff
                    mult        screen_x2           screen_x2               screen_j

                    cp          vga_x1              screen_x1
                    cp          vga_y1              screen_y1
                    cp          vga_x2              screen_x2
                    cp          vga_y2              screen_y2
                    cpfa        vga_color_write     screen_array            screen_i
                    cp          vga_write           screen_num1
                    call        vga_driver          vga_ra
                    
                    add         screen_i            screen_i                screen_num1
                    add         screen_j            screen_j                screen_num1
                    be          screen_loop2        0                       0


draw_easy           mult        screen_num_but      screen_diff             screen_num2
                    cp          screen_diff         screen_size_x
                    cp          screen_y1           screen_num0
                    cp          screen_y2           screen_size_y
screen_loop3        be          screen_end          screen_i                screen_num_but
                    cp          screen_x1           screen_x2
                    div         screen_x2           screen_size_x           screen_num2
                    mult        screen_x2           screen_x2               screen_j

                    cp          vga_x1              screen_x1
                    cp          vga_y1              screen_y1
                    cp          vga_x2              screen_x2
                    cp          vga_y2              screen_y2
                    cpfa        vga_color_write     screen_array            screen_i
                    cp          vga_write           screen_num1
                    call        vga_driver          vga_ra
                    
                    add         screen_i            screen_i                screen_num1
                    add         screen_j            screen_j                screen_num1
                    be          screen_loop3        0                       0



screen_end             ret      screen_ra


screen_diff            0
screen_num_but         0
screen_x1              0
screen_x2              0
screen_y1              0
screen_y2              0
screen_color           screen_array
screen_array           16711680
                       255
                       16776960
                       65280
                       10027212
                       16750899
screen_size_x          639
screen_size_y          479
screen_num0            0
screen_num1            1
screen_num2            2
screen_ra              0
screen_i               0
screen_j               1

#include vga_driver.e
#include clear_screen.e
