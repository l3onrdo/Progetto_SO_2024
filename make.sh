cd "IO_Arduino_Scheduler" || exit

make clean
make
make main.hex

cd "../serial linux" || exit

make clean
make
