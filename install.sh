sudo apt install swig
sudo cp ./api/thostmduserapi.so /usr/lib/libthostmduserapi.so
sudo cp ./api/thosttraderapi.so /usr/lib/libthosttraderapi.so

swig -c++ -python PyCTP.i
python3 setup.py build
sudo python3 setup.py install