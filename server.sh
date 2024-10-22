# Network commands to check the remote server
ps aux | grep nxserver


netstat -tuln | grep 4000

# Start NoMachine server manually in linux
/usr/NX/bin/nxserver --startup


# Setup user and password for the nx server to access using no machine
/usr/NX/bin/nxserver --useradd dharani --system