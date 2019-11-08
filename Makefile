CC=g++

#All: transmit benchmark listdev 
All: benchmark benchmark-async

transmit: transmit.cpp 
	$(CC) transmit.cpp -lusb-1.0 -lpthread -g -o $@

benchmark: benchmark.cpp 
	$(CC) benchmark.cpp -lusb-1.0 -lpthread -g -o $@
benchmark-async: benchmark-async.cpp 
	$(CC) benchmark-async.cpp -lusb-1.0 -lpthread -g -o $@

listdev: listdev.cpp
	$(CC) listdev.cpp -lusb-1.0 -g -o $@

clean:
	rm -f transmit
	rm -f benchmark
	rm -f listdev
	rm -f *.o
