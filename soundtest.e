sound_test_loop         cpfa                sound                  sound_array       sound_test_i
                        cp              sound_param         sound      
                        call            sounddriver         sound_ra
add1                    add             sound_test_i        sound_test_i           sound_plus1
                        be              done                sound_test_i           sound_arrayS
branch                  be              sound_test_loop     0                      0
done                    cp              sound_test_i        sound_num0
                        cp              sound_array         sound_num0  
                        ret             soundtest_ra     

soundtest_ra       0
soundtst_num0      0
sound_test_i       0
sound_plus1        1
sound_arrayS       18    
sound              0
sound_array        0
                   363717072
                   684428797
                   924214714
                   1054722904
                   1060522280
                   940927133
                   710078208
                   395270728
                   33727045
                   -331804471
                   -658103937
                   -906590206
                   -1047882644
                   -1065275049
                   -956710970
                   -735026858
                   -426434300
                   -67420806

#include sounddriver.e
