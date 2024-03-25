flash_button    
                be      but1                flash_but_num       flash_num1
                be      but2                flash_but_num       flash_num2
                be      but3                flash_but_num       flash_num3
                be      but4                flash_but_num       flash_num4

but1            cp      flash_x1            flash_num0
                div     flash_x2            screen_size_x       flash_num2
                cp      flash_y1            flash_num0
                div     flash_y2            screen_size_y       flash_num2
                cp      flash_color         screen_color_red               
                be      go                  0                   0


but2            cp      flash_x2            screen_size_x
                div     flash_x1            screen_size_x       flash_num2
                cp      flash_y1            flash_num0
                div     flash_y2            screen_size_y       flash_num2
                cp     flash_color          screen_color_yel               
                be      go                  0                   0


but3            cp      flash_x1            flash_num0
                div     flash_x2            screen_size_x       flash_num2
                cp      flash_y2            screen_size_y
                div     flash_y1            screen_size_y       flash_num2
                cp      flash_color         screen_color_gre               
                be      go                  0                   0



but4            cp      flash_x2            screen_size_x
                div     flash_x1            screen_size_x       flash_num2
                cp      flash_y2            screen_size_y
                div     flash_y1            screen_size_y       flash_num2
                cp      flash_color         screen_color_blu             
                be      go                  0                   0




go              cp      vga_x1              flash_x1
                cp      vga_x2              flash_x2
                cp      vga_y1              flash_y1
                cp      vga_y2              flash_y2
                cp      vga_color_write     flash_white
                cp      vga_write           flash_num1
                call    vga_driver          vga_ra
                
flash_stall     be      flash_back          flash_i             flash_num400000
                add     flash_i             flash_i             flash_num1  
                be      flash_stall         0                   0   
                
flash_back      cp      flash_i             flash_num0
                cp      vga_color_write     flash_color
                cp      vga_write           flash_num1
                call    vga_driver          vga_ra
                
                ret     flash_ra

flash_but_num   0
flash_num0      0
flash_num1      1
flash_num2      2
flash_num3      3
flash_num4      4
flash_white     16777215
flash_num400000 400000
flash_color     0
flash_x1        0
flash_x2        0
flash_y1        0
flash_y2        0
flash_ra        0
flash_i         0
