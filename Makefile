# doalarm makefile
# M.J. Pomraning <mjp@pilcrow.madison.wi.us>
# 08 Dec 2001

PREFIX = /usr/
INSTALL = install

CC = gcc
CFLAGS = -O2 -Wall -Wextra

LD = gcc
LDFLAGS = -s
LIBS =

doalarm: doalarm.o
	$(LD) $(LDFLAGS) $(LIBS) $^ -o $@

doalarm.o: doalarm.c
	$(CC) $(CFLAGS) -c $<

install: bininstall

bininstall:
	$(INSTALL) -m 0755 doalarm $(PREFIX)/bin

clean:
	rm -f *.o core doalarm

.PHONY: clean install bininstall maninstall
