RandomNum       cp          random_digit          random_num0
                cp          random_param          random_num0
                call        mic                   random_ret_ra
                cp          random_digit          random_param
r_negative      mult        random_digit          random_digit        random_num-1
                blt         r_negative            random_digit        random_num0
r_reduce        blt         r_random              random_digit        random_num100
                div         random_digit          random_digit        random_num10
                bne         r_reduce              random_digit        random_num0
r_random        be          RandomNum             random_digit        random_num0
                be          r_easy                random_difficulty   random_num1
                be          r_medium              random_difficulty   random_num2
                be          r_hard                random_difficulty   random_num3

r_easy          blt         r_easy_1              random_digit        random_num20
                blt         r_easy_2              random_digit        random_num30                
                blt         r_easy_2              random_digit        random_num40
                blt         r_easy_1              random_digit        random_num50
                blt         r_easy_1              random_digit        random_num60
                blt         r_easy_2              random_digit        random_num70
                blt         r_easy_1              random_digit        random_num80
                blt         r_easy_2              random_digit        random_num90
                blt         r_easy_1              random_digit        random_num99
r_easy_1        cp          random_digit          random_num1
                bne         r_end                 random_digit        random_num0
r_easy_2        cp          random_digit          random_num2
                bne         r_end                 random_digit        random_num0

r_medium        blt         r_medium_1            random_digit        random_num33
                blt         r_medium_2            random_digit        random_num56
                blt         r_medium_3            random_digit        random_num78
                blt         r_medium_4            random_digit        random_num99
r_medium_1      cp          random_digit          random_num1
                bne         r_end                 random_digit        random_num0
r_medium_2      cp          random_digit          random_num2
                bne         r_end                 random_digit        random_num0
r_medium_3      cp          random_digit          random_num3
                bne         r_end                 random_digit        random_num0
r_medium_4      cp          random_digit          random_num4
                bne         r_end                 random_digit        random_num0

r_hard          blt         r_hard_1              random_digit        random_num25
                blt         r_hard_2              random_digit        random_num40
                blt         r_hard_3              random_digit        random_num55
                blt         r_hard_4              random_digit        random_num70
                blt         r_hard_5              random_digit        random_num85
                blt         r_hard_6              random_digit        random_num99
r_hard_1        cp          random_digit          random_num1
                bne         r_end                 random_digit        random_num0
r_hard_2        cp          random_digit          random_num2
                bne         r_end                 random_digit        random_num0    
r_hard_3        cp          random_digit          random_num3
                bne         r_end                 random_digit        random_num0
r_hard_4        cp          random_digit          random_num4
                bne         r_end                 random_digit        random_num0
r_hard_5        cp          random_digit          random_num5
                bne         r_end                 random_digit        random_num0
r_hard_6        cp          random_digit          random_num6
                bne         r_end                 random_digit        random_num0

r_end           ret         r_rand_ra                   

random_difficulty       0
random_digit            0
random_num-1            -1
random_num10            10
random_num100           100
random_num2             2
random_num3             3
random_num4             4
random_num5             5
random_num6             6

random_num20            20
random_num50            50
random_num70            70
random_num99            99
random_num33            33
random_num56            56
random_num78            78
random_num25            25
random_num40            40
random_num55            55
random_num85            85
random_num30            30
random_num60            60
random_num80            80
random_num90            90



r_rand_ra               0

#include mic.e
