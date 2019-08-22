all:main
main:main.cc
	g++ -std=c++0x -DCPPHTTPLIB_OPENSSL_SUPPORT $^ -o $@ -lboost_filesystem -lboost_system -lpthread -lboost_thread -lssl -lcrypto
client:client.cc
	g++ -std=c++0x $^ -o $@ -lboost_filesystem -lboost_system -lpthread -lboost_thread
server:server.cc
	g++ -std=c++0x $^ -o $@ -lboost_filesystem -lboost_system -lpthread
