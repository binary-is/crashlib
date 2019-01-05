PREFIX=/usr/local

libcrashlib.so : crashlib.c crashlib.h
	libtool --mode=link "gcc -w crashlib.c -fPIC -shared" -o libcrashlib.so

install: libcrashlib.so crashlib.h
	mkdir -p $(PREFIX)/lib
	mkdir -p $(PREFIX)/include
	cp libcrashlib.so $(PREFIX)/lib
	cp crashlib.h $(PREFIX)/include

clean:
	rm -f libcrashlib.so testapp.o testapp

uninstall:
	rm -f $(PREFIX)/lib/libcrashlib.so
	rm -f $(PREFIX)/include/crashlib.h

testapp: testapp.c
	gcc testapp.c -o testapp -lcrashlib
