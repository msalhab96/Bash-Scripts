for pid in $(pidof $1)
do 
	sudo kill -9 $pid
done
