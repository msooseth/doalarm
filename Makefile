# doalarm makefile
# M.J. Pomraning <mjp@pilcrow.madison.wi.us>
# 08 Dec 2001

PREFIX = /usr/bin/
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

install: bininstall maninstall

bininstall:
	$(INSTALL) -m 0755 doalarm $(PREFIX)

clean:
	rm -f *.o core doalarm

.PHONY: clean install bininstall maninstall
