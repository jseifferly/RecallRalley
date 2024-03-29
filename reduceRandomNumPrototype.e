restart     call        mic             ret_ra
            cp          digit           param
negative    mult        digit           digit       num-1
            blt         negative        digit       num0
reduce      blt         random          digit       num100
            div         digit           digit       num10
            bne         reduce          digit       num0
random      cp          number          digit
            be          easy            difficulty  num1
            be          medium          difficulty  num2
            be          hard            difficulty  num3

easy        blt         easy_1          digit       num40
            blt         easy_2          digit       num70
            blt         easy_3          digit       num99
easy_1      cp          digit           num1
            bne         end             digit       num0
easy_2      cp          digit           num2
            bne         end             digit       num0
easy_3      cp          digit           num3
            bne         end             digit       num0

medium      blt         medium_1        digit       num33
            blt         medium_2        digit       num56
            blt         medium_3        digit       num78
            blt         medium_4        digit       num99
medium_1    cp          digit           num1
            bne         end             digit       num0
medium_2    cp          digit           num2
            bne         end             digit       num0
medium_3    cp          digit           num3
            bne         end             digit       num0
medium_4    cp          digit           num4
            bne         end             digit       num0


hard        blt         hard_1          digit       num25
            blt         hard_2          digit       num40
            blt         hard_3          digit       num55
            blt         hard_4          digit       num70
            blt         hard_5          digit       num85
            blt         hard_6          digit       num99
hard_1      cp          digit           num1
            bne         end             digit       num0
hard_2      cp          digit           num2
            bne         end             digit       num0    
hard_3      cp          digit           num3
            bne         end             digit       num0
hard_4      cp          digit           num4
            bne         end             digit       num0
hard_5      cp          digit           num5
            bne         end             digit       num0
hard_6      cp          digit           num6
            bne         end             digit       num0

end         halt           

difficulty  1
digit       0
num-1       -1
num10       10
num100      100
num2        2
num3        3
num4        4
num5        5
num6        6



num70       70
num99       99

num33       33
num56       56
num78       78

num25       25
num40       40
num55       55
num85       85

number      0
#include mic.e