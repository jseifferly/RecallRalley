flash_button    be      flash_easy          flash_diff          flash_num1
                be      flash_mid           flash_diff          flash_num2
                be      flash_hard          flash_diff          flash_num3
               
               
               
flash_easy      be      feas_but1           flash_but_num       flash_num1
                be      feas_but2           flash_but_num       flash_num2         

feas_but1       cp      flash_x1            flash_num0
                div     flash_x2            screen_size_x       flash_num2
                cp      flash_y1            flash_num0
                cp      flash_y2            screen_size_y
                call    sound_test_loop     soundtest_ra
                cp      flash_color         flash_red               
                be      flash_go            0                   0

feas_but2       div     flash_x1            screen_size_x       flash_num2
                cp      flash_x2            screen_size_x
                cp      flash_y1            flash_num0
                cp      flash_y2            screen_size_y
                call    sound_test_loop2     soundtest_ra
                cp      flash_color         flash_blue              
                be      flash_go            0                   0
               
               
               
               
flash_mid       be      fmid_but1           flash_but_num       flash_num1
                be      fmid_but2           flash_but_num       flash_num2
                be      fmid_but3           flash_but_num       flash_num3
                be      fmid_but4           flash_but_num       flash_num4

fmid_but1       cp      flash_x1            flash_num0
                div     flash_x2            screen_size_x       flash_num2
                cp      flash_y1            flash_num0
                div     flash_y2            screen_size_y       flash_num2
                call    sound_test_loop     soundtest_ra
                cp      flash_color         flash_red               
                be      flash_go            0                   0

fmid_but2       cp      flash_x2            screen_size_x
                div     flash_x1            screen_size_x       flash_num2
                cp      flash_y1            flash_num0
                div     flash_y2            screen_size_y       flash_num2
                call    sound_test_loop2    soundtest_ra
                cp      flash_color         flash_blue                   
                be      flash_go            0                   0

fmid_but3       cp      flash_x1            flash_num0
                div     flash_x2            screen_size_x       flash_num2
                cp      flash_y2            screen_size_y
                div     flash_y1            screen_size_y       flash_num2
                call    sound_test_loop3    soundtest_ra
                cp      flash_color         flash_green                
                be      flash_go            0                   0

fmid_but4       cp      flash_x2            screen_size_x
                div     flash_x1            screen_size_x       flash_num2
                cp      flash_y2            screen_size_y
                div     flash_y1            screen_size_y       flash_num2
                call    sound_test_loop4    soundtest_ra
                cp      flash_color         flash_yel                
                be      flash_go            0                   0





flash_hard      be      fhar_but1           flash_but_num       flash_num1
                be      fhar_but2           flash_but_num       flash_num2
                be      fhar_but3           flash_but_num       flash_num3
                be      fhar_but4           flash_but_num       flash_num4
                be      fhar_but5           flash_but_num       flash_num5
                be      fhar_but6           flash_but_num       flash_num6


fhar_but1       cp      flash_x1            flash_num0
                div     flash_x2            screen_size_x       flash_num3
                cp      flash_y1            flash_num0
                div     flash_y2            screen_size_y       flash_num2
                call    sound_test_loop     soundtest_ra
                cp      flash_color         flash_red               
                be      flash_go            0                   0

fhar_but2       div     flash_x1            screen_size_x       flash_num3
                div     flash_x2            screen_size_x       flash_num3
                mult    flash_x2            flash_x2            flash_num2
                cp      flash_y1            flash_num0
                div     flash_y2            screen_size_y       flash_num2
                call    sound_test_loop2     soundtest_ra
                cp      flash_color         flash_blue               
                be      flash_go            0                   0

fhar_but3       div     flash_x1            screen_size_x       flash_num3
                mult    flash_x1            flash_x1            flash_num2
                cp      flash_x2            screen_size_x
                cp      flash_y1            flash_num0
                div     flash_y2            screen_size_y       flash_num2
                call    sound_test_loop3     soundtest_ra
                cp      flash_color         flash_green               
                be      flash_go            0                   0

fhar_but4       cp      flash_x1            flash_num0
                div     flash_x2            screen_size_x       flash_num3
                div     flash_y1            screen_size_y       flash_num2
                cp      flash_y2            screen_size_y
                call    sound_test_loop4     soundtest_ra
                cp      flash_color         flash_yel              
                be      flash_go            0                   0

fhar_but5       div     flash_x1            screen_size_x       flash_num3
                div     flash_x2            screen_size_x       flash_num3
                mult    flash_x2            flash_x2            flash_num2
                div     flash_y1            screen_size_y       flash_num2
                cp      flash_y2            screen_size_y
                call    sound_test_loop5     soundtest_ra
                cp      flash_color         flash_purp               
                be      flash_go            0                   0

fhar_but6       div     flash_x1            screen_size_x       flash_num3
                mult    flash_x1            flash_x1            flash_num2
                cp      flash_x2            screen_size_x
                div     flash_y1            screen_size_y       flash_num2
                cp      flash_y2            screen_size_y
                call    sound_test_loop6     soundtest_ra
                cp      flash_color         flash_org              
                be      flash_go            0                   0





flash_go        cp      vga_x1              flash_x1
                cp      vga_x2              flash_x2
                cp      vga_y1              flash_y1
                cp      vga_y2              flash_y2
                cp      vga_color_write     flash_white
                cp      vga_write           flash_num1
                call    vga_driver          vga_ra
                
flash_stall     be      flash_back          flash_i             flash_num450000
                add     flash_i             flash_i             flash_num1  
                be      flash_stall         0                   0   
                
flash_back      cp      flash_i             flash_num0
                cp      vga_color_write     flash_color
                cp      vga_write           flash_num1
                call    vga_driver          vga_ra
                
                ret     flash_ra

flash_diff      0
flash_but_num   0
flash_num0      0
flash_num1      1
flash_num2      2
flash_num3      3
flash_num4      4
flash_num5      5
flash_num6      6
flash_white     16777215
flash_red       16711680                 
flash_blue      255
flash_green     16776960       
flash_yel       65280
flash_purp      10027212
flash_org       16750899
flash_num450000 450000
flash_color     0
flash_x1        0
flash_x2        0
flash_y1        0
flash_y2        0
flash_ra        0
flash_i         0

#include soundtest.e
#include draw_screen.e
