echo Sync time from internet
echo -----------------------

sudo ntpdate -q 0.us.pool.ntp.org

sudo service ntp stop
sudo ntpdate 0.us.pool.ntp.org
sudo service ntp start

echo Sync time from Pi to RTC
echo ------------------------ 
sudo hwclock -w


echo Read time from RTC
echo ------------------
sudo hwclock -r
