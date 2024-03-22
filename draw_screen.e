draw_screen  call    clear_screen    clear_ra
       
            //Top Left
             div     screen_x2           screen_size_x   screen_num2  
             div     screen_y2           screen_size_y   screen_num2
             cp      vga_x1              screen_x1
             cp      vga_y1              screen_y1
             cp      vga_x2              screen_x2
             cp      vga_y2              screen_y2
             cp      vga_color_write     screen_color_red
             cp      vga_write           screen_num1
             call    vga_driver          vga_ra
            
             //Bot Left
             div     screen_y1           screen_size_y   screen_num2                
             div     screen_y2           screen_size_y   screen_num1
             cp      vga_x1              screen_x1
             cp      vga_y1              screen_y1
             cp      vga_x2              screen_x2
             cp      vga_y2              screen_y2
             cp      vga_color_write     screen_color_gre
             cp      vga_write           screen_num1
             call    vga_driver          vga_ra
            
             //Bot Right
             div     screen_x1           screen_size_x   screen_num2  
             div     screen_x2           screen_size_x   screen_num1  
             cp      vga_x1              screen_x1
             cp      vga_y1              screen_y1
             cp      vga_x2              screen_x2
             cp      vga_y2              screen_y2
             cp      vga_color_write     screen_color_blu
             cp      vga_write           screen_num1
             call    vga_driver          vga_ra
            
             //Top Right
             cp      screen_y1           screen_num0
             div     screen_y2           screen_size_y   screen_num2
             cp      vga_x1              screen_x1
             cp      vga_y1              screen_y1
             cp      vga_x2              screen_x2
             cp      vga_y2              screen_y2
             cp      vga_color_write     screen_color_yel
             cp      vga_write           screen_num1
             call    vga_driver          vga_ra
            
            ret      screen_ra



screen_x1              0
screen_x2              0
screen_y1              0
screen_y2              0
screen_color_red       0xff0000
screen_color_blu       255
screen_color_yel       0xffff00
screen_color_gre       65280
screen_size_x          639
screen_size_y          479
screen_num0            0
screen_num1            1
screen_num2            2
screen_ra              0

#include vga_driver.e
#include clear_screen.e
