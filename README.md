# OAPS_Temp_Watcher
Raspberry pi ZeroW temperature tracker just add those lines under /root/.bashrc with
`$ sudo nano /root/.bashrc`
and add
```
if [ -d /root/myopenaps ]; then
	bash /root/themp.sh
fi
```
