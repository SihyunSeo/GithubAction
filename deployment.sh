spring_pid=`ps -ef | grep day01 | grep -v grep | awk -F" " '{print $2}'`

if [ $spring_pid ]
then
	echo "실행중인 백엔드 프로세스 종료하는중..."
	kill -9 $spring_pid
else
	echo "실행중인 백엔드 프로세스가 없습니다!"
fi

echo "백엔드를 실행중입니다..."
nohup java -jar devops-0.0.1-SNAPSHOT.jar
