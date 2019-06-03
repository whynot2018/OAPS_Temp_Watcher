# OAPS_Temp_Tracker

Raspberry pi ZeroW temperature tracker just add those lines under /root/.bashrc with
`$ sudo nano /root/.bashrc`
```
if [ -d /root/myopenaps ]; then
	bash /root/themp.sh
fi
```
and run
```
chmod u+x themp.sh
```
and add  `crontab -e`
```
*/15 * * * * cd /root && themp.sh >> /var/log/openaps/temp-loop.log 2>&1
```
