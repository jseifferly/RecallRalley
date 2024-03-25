//sound_test_loop2        add                 sound_cnt2             sound_cnt2  plus1
sound_test_loop         cpfa                sound                  array       sound_test_i
        cp              param               sound      
        call            sounddriver         driv_ra
add1    add             sound_test_i        sound_test_i           plus1
        be              done                sound_test_i           arrayS
branch  be              sound_test_loop     0                      0
done    cp              sound_test_i        num_0
        cp              array               num_0
        //bne             sound_test_loop2    sound_cnt2             repeat_size           
        ret             soundtest_ra     

//repeat_size        1
//sound_cnt2         0
soundtest_ra       0
num_0              0
sound_test_i       0
plus1   1
arrayS  18    
sound   0
array   0
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