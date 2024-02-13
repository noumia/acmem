.PHONY: all clean cli

all: dns.exe wild-le.exe

dns.exe: cmd/dns/main.go
	sh -c "cd cmd/dns; sh ../../mk.sh"
	mv cmd/dns/*.exe .

wild-le.exe: cmd/wild-le/main.go
	sh -c "cd cmd/wild-le; sh ../../mk.sh"
	mv cmd/wild-le/*.exe .

cli:
	sh -c "cd cmd/dns; sh ../../get.sh"
	sh -c "cd cmd/wild-le; sh ../../get.sh"

clean:
	rm -f *.exe
	rm -f cmd/dns/*.exe
	rm -f cmd/wild-le/*.exe
