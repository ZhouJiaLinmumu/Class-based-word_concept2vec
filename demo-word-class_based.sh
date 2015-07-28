#make
time ./word2vec_extended.exe -train small -output testvectors -output_concept concepts -class test_class -cbow 0 -size 400 -window 5 -negative 10 -negative_concept 30 -hs 2 -sample 1e-4 -threads 20 -binary 0 -iter 15
#./distance vectors.bin
