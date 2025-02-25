
if [ "$1" == "--make" ]; then
    ./make.sh
fi

cd "serial linux" || exit

gnome-terminal  --title="Terminale di Output" -- bash -c "stty -echo -icanon; ./serial_linux /dev/ttyUSB0 19200 1; stty echo icanon; exec bash"

gnome-terminal  --title="Terminale di Input" -- bash -c "./serial_linux /dev/ttyUSB0 19200 0; exec bash"

