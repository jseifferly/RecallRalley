highscore       be      high_easy       high_diff       high_num1
                be      high_med        high_diff       high_num2
                be      high_hard       high_diff       high_num3

high_easy       cp      0x80000004      high_escore
                blt     high_echange    high_escore     high_com 
                ret     high_ra
high_echange    cp      high_escore     high_com
                cp      0x80000004      high_escore
                ret     high_ra

high_med        cp      0x80000004      high_mscore
                blt     high_mchange    high_mscore     high_com 
                ret     high_ra
high_mchange    cp      high_mscore     high_com
                cp      0x80000004      high_mscore
                ret     high_ra

high_hard       cp      0x80000004      high_hscore
                blt     high_hchange    high_hscore     high_com 
                ret     high_ra
high_hchange    cp      high_hscore     high_com
                cp      0x80000004      high_hscore
                ret     high_ra

high_num1       1
high_num2       2
high_num3       3
high_num0       0
high_escore     0
high_mscore     0
high_hscore     0
high_diff       0
high_com        0
high_ra         0