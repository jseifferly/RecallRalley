RandomArray     cp          random_number           random_num0
                cp          random_param            random_num0
                cp          random_i                random_num0
                cp          random_array            random_num0 
                cp          random_one_count        random_num0
                cp          random_two_count        random_num0
                cp          random_three_count      random_num0
                cp          random_four_count       random_num0
                cp          random_five_count       random_num0
                cp          random_six_count        random_num0
                cp          r_rand_ra               random_num0  
r_loop          cp          random_delay            random_num0
                call        RandomNum               r_rand_ra
                cp          random_number           random_digit
                cpta        random_number           random_array                random_i
                be          r_add1                  random_number               random_num1
                be          r_add2                  random_number               random_num2
                be          r_add3                  random_number               random_num3
                be          r_add4                  random_number               random_num4
                be          r_add5                  random_number               random_num5
                be          r_add6                  random_number               random_num6
r_add1          add         random_one_count        random_one_count            random_num1
                be          r_continue              random_num1                 random_num1
r_add2          add         random_two_count        random_two_count            random_num1
                be          r_continue              random_num1                 random_num1
r_add3          add         random_three_count      random_three_count          random_num1
                be          r_continue              random_num1                 random_num1
r_add4          add         random_four_count       random_four_count           random_num1
                be          r_continue              random_num1                 random_num1
r_add5          add         random_five_count       random_five_count           random_num1
                be          r_continue              random_num1                 random_num1
r_add6          add         random_six_count        random_six_count            random_num1
                be          r_continue              random_num1                 random_num1
r_continue      add         random_i                random_i                    random_num1
                be          r_diff_check            random_i                    random_array_length
r_delay_loop    be          r_loop                  random_delay                random_delay_num
                add         random_delay            random_delay                random_num1
                be          r_delay_loop            random_num0                 random_num0
r_diff_check    be          r_easy_check            random_difficulty           random_num1
                be          r_med_check             random_difficulty           random_num2
                be          r_hard_check            random_difficulty           random_num3

r_easy_check    blt         RandomArray             random_one_count            random_num10
                blt         RandomArray             random_two_count            random_num10
                be          r_ending                random_num1                 random_num1

r_med_check     blt         RandomArray             random_one_count            random_num5
                blt         RandomArray             random_two_count            random_num5
                blt         RandomArray             random_three_count          random_num5
                blt         RandomArray             random_four_count           random_num5
                be          r_ending                random_num1                 random_num1

r_hard_check    blt         RandomArray             random_one_count            random_num3
                blt         RandomArray             random_two_count            random_num3
                blt         RandomArray             random_three_count          random_num3
                blt         RandomArray             random_four_count           random_num3
                blt         RandomArray             random_five_count           random_num3
                blt         RandomArray             random_six_count            random_num3
                be          r_ending                random_num1                 random_num1

r_ending        r_ret_array


r_ret_array             0
random_delay            0
random_delay_num        100
random_array_length     25
random_number           0
random_i                0

random_filler           88

random_one_count        0
random_two_count        0
random_three_count      0
random_four_count       0
random_five_count       0
random_six_count        0

random_filler2          88

random_array            99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99
                        99


#include RandomNum.e