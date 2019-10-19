#update of server
screen -dr dst_server1 -X quit
screen -dr dst_server2 -X quit
cd /home/dst
./steamcmd.sh +login anonymous +force_install_dir /home/dst/server_dst +app_update 343050 validate +quit
sleep 60
cp ~/dedicated_server_mods_setup.lua /home/DST/server_dst/mods
sh /home/dst/server_dst/bin/restart.sh
sh /home/dst/server_dst/bin/restart2.sh
echo "Server Started"
