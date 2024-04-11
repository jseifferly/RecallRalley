game      call    clear_screen         clear_ra
          call    menu                 menu_ra
          cp      game_diff            menu_diff
          cp      random_difficulty    game_diff
          call    RandomArray          r_ret_array
          cp      screen_diff          game_diff
          call    draw_screen          screen_ra
          cp      game_patLen          game_num0
          cp      flash_diff           game_diff
          cp      button_diff          game_diff
          cp      game_counter         game_numn1
          cp      high_diff            game_diff


g_reset   cp      game_i               game_num0
          cp      game_j               game_num0
          cp      game_k               game_num0
          cp      game_patNum          game_num0
          add     game_counter         game_counter    game_num1
          cp      0x80000003           game_counter
          cp      high_com             game_counter
          call    highscore            high_ra
          add     game_patLen          game_patLen     game_num1
      
g_stall1  be      g_pattern            game_j        game_num600000
          add     game_j               game_j        game_num1
          be      g_stall1             0             0
     
     
     
     
g_pattern cpfa    game_patNum          random_array   game_i
          be      g_user               game_i         game_patLen
          cp      flash_but_num        game_patNum
          call    flash_button         flash_ra
          add     game_i               game_i         game_num1
          cp      game_j               game_num0
g_stall2  be      g_pattern            game_j         game_num600000
          add     game_j               game_j         game_num1
          be      g_stall2             0              0
     
            
     
     
g_user    call      button             button_ra
          bne       g_user             button_press    game_num1
          cp        flash_but_num      button_act  
          call      flash_button       flash_ra


g_next    cpfa      game_patNum        random_array    game_k
          bne       g_end              button_act      game_patNum
          add       game_k             game_k          game_num1
          be        g_reset            game_k          game_patLen
          be        g_user             0               0



g_end     be        game               0               0
        halt



game_num0           0
game_num1           1
game_num2           2
game_num3           3
game_numn1          -1
game_counter        0
game_ra             0
game_diff           0
game_highs          0
game_i              0
game_j              0
game_k              0
game_num600000      600000
game_patNum         0
game_patLen         0
game_pat            2
                    3
                    5
                    4
                    4
                    6
                    1
                    3
                    1
                    2
                    4

#include button.e
#include flash_button.e
#include menu.e
#include RandomArray.e
#include highscore.e
