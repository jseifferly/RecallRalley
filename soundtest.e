
sound_test_loop         cpfa                sound                  array       sound_test_i
        cp              param               sound      
        call            sounddriver         driv_ra
        add             sound_test_i        sound_test_i           plus1
        be              done                sound_test_i           arrayS
        be              sound_test_loop     0                      0
done    cp              sound_test_i        num_0
        cp              array               num_0        
        ret             soundtest_ra     

sound_test_loop2         cpfa                sound                  array1       sound_test_i
        cp              param               sound      
        call            sounddriver         driv_ra
        add             sound_test_i        sound_test_i           plus1
        be              done1               sound_test_i           array1S
        be              sound_test_loop2     0                      0
done1   cp              sound_test_i        num_0
        cp              array1               num_0        
        ret             soundtest_ra     

sound_test_loop3         cpfa                sound                  array2       sound_test_i
        cp              param               sound      
        call            sounddriver         driv_ra
        add             sound_test_i        sound_test_i           plus1
        be              done2               sound_test_i           array2S
        be              sound_test_loop3     0                      0
done2   cp              sound_test_i        num_0
        cp              array               num_0        
        ret             soundtest_ra     

sound_test_loop4         cpfa                sound                  array3       sound_test_i
        cp              param               sound      
        call            sounddriver         driv_ra
        add             sound_test_i        sound_test_i           plus1
        be              done3               sound_test_i           array3S
        be              sound_test_loop4    0                      0
done3   cp              sound_test_i        num_0
        cp              array               num_0        
        ret             soundtest_ra     


soundtest_ra       0
num_0              0
sound_test_i       0
plus1   1
arrayS  90    
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

array1   0
        363717072
        924214714
        1060522280
        710078208
        33727045
        -658103937
        -1047882644
        -956710970
        -426434300
        363717072
        924214714
        1060522280
        710078208
        363717072
        924214714
        1060522280
        710078208
        33727045
        -658103937
        -1047882644
        -956710970
        -426434300
        363717072
        924214714
        1060522280
        710078208
        363717072
        924214714
        1060522280
        710078208
        33727045
        -658103937
        -1047882644
        -956710970
        -426434300
        363717072
        924214714
        1060522280
        710078208
        363717072
        924214714
        1060522280
        710078208
        33727045
        -658103937
        -1047882644
        -956710970
        -426434300
        363717072
        924214714
        1060522280
        710078208
        363717072
        924214714
        1060522280
        710078208
        33727045
        -658103937
        -1047882644
        -956710970
        -426434300
        363717072
        924214714
        1060522280
        710078208
        
array1S 65

array2  0
        300000000
        400000000
        500000000
        600000000
        500000000
        400000000
        300000000
        200000000
        100000000
        -100000000
        -200000000
        -300000000
        -400000000
        -500000000
        -600000000
        -500000000
        -400000000
        -300000000
        -200000000
        -100000000
        100000000
        200000000
        300000000
        400000000
        500000000
        600000000
        500000000
        400000000
        300000000
        200000000
        100000000
        -100000000
        -200000000
        -300000000
        -400000000
        -500000000
        -600000000
        -500000000
        -400000000
        -300000000
        -200000000
        -100000000
        100000000
        200000000
        300000000
        400000000
        500000000
        600000000
        500000000
        400000000
        300000000
        200000000
        100000000
        -100000000
        -200000000
        -300000000
        -400000000
        -500000000
        -600000000
        -500000000
        -400000000
        -300000000
        -200000000
        -100000000
        100000000
        200000000
        300000000
        400000000
        500000000
        600000000
        500000000
        400000000
        300000000
        200000000
        100000000
        -100000000
        -200000000
        -300000000
        -400000000
        -500000000
        -600000000
        -500000000
        -400000000
        -300000000
        -200000000
        -100000000
        100000000
        200000000
        300000000
        400000000
        500000000
        600000000
        500000000
        400000000
        300000000
        200000000
        100000000
        -100000000
        -200000000
        -300000000
        -400000000
        -500000000
        -600000000
        -500000000
        -400000000
        -300000000
        -200000000
        -100000000
        100000000
        200000000

array2S 110

array3  0
        300000000
        350000000
        400000000
        450000000
        500000000
        550000000
        600000000
        550000000
        500000000
        450000000
        400000000
        350000000
        300000000
        250000000
        200000000
        150000000
        100000000
        50000000
        -50000000
        -10000000
        -150000000
        -200000000
        -250000000
        -300000000
        -350000000
        -400000000
        -450000000
        -500000000
        -550000000
        -600000000
        -550000000
        -50000000
        -450000000
        -400000000
        -350000000
        -300000000
        -250000000
        -20000000
        -150000000
        -100000000
        -50000000
        50000000
        100000000
        150000000
        200000000
        250000000
        300000000
        350000000
        400000000
        450000000
        500000000
        550000000
        600000000
        550000000
        500000000
        450000000
        400000000
        350000000
        300000000
        250000000
        200000000
        150000000
        100000000
        50000000
        -50000000
        -10000000
        -150000000
        -200000000
        -250000000
        -300000000
        -350000000
        -400000000
        -450000000
        -500000000
        -550000000
        -600000000
        -550000000
        -50000000
        -450000000
        -400000000
        -350000000
        -300000000
        -250000000
        -20000000
        -150000000
        -100000000
        -50000000
        50000000
        100000000
        150000000
        200000000
        250000000
        300000000
        350000000
        400000000
        450000000
        500000000
        550000000
        600000000
        550000000
        500000000
        450000000
        400000000
        350000000
        300000000
        250000000
        200000000
        150000000
        100000000
        50000000
        -50000000
        -10000000
        -150000000
        -200000000
        -250000000
        -300000000
        -350000000
        -400000000
        -450000000
        -500000000
        -550000000
        -600000000
        -550000000
        -50000000
        -450000000
        -400000000
        -350000000
        -300000000
        -250000000
        -20000000
        -150000000
        -100000000
        -50000000
        50000000
        100000000
        150000000
        200000000
        250000000

array3S 138
#include sounddriver.e