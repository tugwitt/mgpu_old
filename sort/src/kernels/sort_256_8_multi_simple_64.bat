nvcc -m=64 --cubin -D BUILD_64 -Xptxas=-v -D SCATTER_SIMPLE -D NUM_THREADS=256 -D VALUES_PER_THREAD=8 -D VALUE_TYPE_MULTI -arch=compute_20 -code=sm_20 -o ../cubin64/sort_256_8_multi_simple.cubin sortgen.cu
IF %ERRORLEVEL% EQU 0 cuobjdump -sass ../cubin64/sort_256_8_multi_simple.cubin > ../isa64/sort_256_8_multi_simple.isa


