mid_game  call    clear_screen    clear_ra
          call    startBut        startBut_ra
          call    draw_screen     screen_ra
          cp      mid_patLen      mid_num0


m_reset   cp      mid_i           mid_num0
          cp      mid_j           mid_num0
          cp      mid_k           mid_num0
          cp      mid_patNum      mid_num0
          add     mid_counter     mid_counter     mid_num1
          cp      0x80000003      mid_counter
          add     mid_patLen      mid_patLen      mid_num1
 
m_stall1  be      m_pattern       mid_j           mid_num600000
          add     mid_j           mid_j           mid_num1
          be      m_stall1          0             0




m_pattern cpfa    mid_patNum      mid_pat         mid_i
          be      m_user          mid_i           mid_patLen
          cp      flash_but_num   mid_patNum
          call    flash_button    flash_ra
          add     mid_i           mid_i           mid_num1
          cp      mid_j           mid_num0
m_stall2  be      m_pattern       mid_j           mid_num600000
          add     mid_j           mid_j           mid_num1
          be      m_stall2        0               0

       


m_user    call      button          button_ra
          bne       m_user          button_press    mid_num1
          cp        0x80000004      button_act
          cp        flash_but_num   button_act  
          call      flash_button    flash_ra
  
          cp      mid_j           mid_num0
m_stall3  be      m_next          mid_j           mid_num400000
          add     mid_j           mid_j           mid_num1
          be      m_stall3        0               0

m_next    cpfa      mid_patNum      mid_pat         mid_k
          bne       m_end           button_act      mid_patNum
          add       mid_k           mid_k           mid_num1
          be        m_reset         mid_k           mid_patLen
          be        m_user            0             0





m_end   call    clear_screen    clear_ra
        halt



mid_num0           0
mid_num1           1
mid_counter        -1
mid_i              0
mid_j              0
mid_k              0
mid_num600000      600000
mid_num400000      400000
mid_patNum         0
mid_patLen         0
mid_pat            3
                   2
                   1
                   1
                   3
                   4
                   2
                   1
                   4
                   3
                   2
                   4
                   1
                   2
                   4
                   2
                   3
                   3
                   2
                   1

#include button.e
#include flash_button.e
#include startBut.e
