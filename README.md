# pitemp
Introduction of using BASH script to check temperatures on the Raspberry Pi

## pitemp
This is a simple bash script that retrieves the **CPU** and **GPU** temperature of the Raspberry Pi Single Board Computer (**SBC**).

1. Go to directory
```
cd pitemp
```

2. Run Script
```
bash pitemp.sh
```

### Correct output
```
Huats Pitemp Bash Script
Pi Temperature of <hostname> @ <Day-Date-Time-Year>
---------------------------------------
CPU Temperature is => <CPU-Temp> 'C
GPU Temperature is => <GPU-Temp> 'C

```
<br/><br/>

## timepi.sh
This is a simple bash script that retrieves and log the **CPU** and **GPU** temperature of the Raspberry Pi Single Board Computer (**SBC**).

1. Go to directory
```
cd pitemp
```

2. Make **timepi.sh** executable
```
sudo chmod +x timepi.sh
```

3. edit **crontab** to run **timepi.sh** every minute
```
crontab -e
```
enter the following command
```
*/1 * * * * /bin/bash /home/<username>/pitemp/timepi.sh
```

4. Read **templog.txt** output
```
Pi Temperature of <hostname> @ <DAy-Date-Time-Year>
CPU Temperature is => 40 C
GPU Temperature is => temp=41.0'C
----------------------------

```