CODE=`curl --write-out '%{http_code}' --silent --output /dev/null --request GET --url 'http://localhost:3000'`
 
echo $CODE
 
if [ $CODE -eq '200' ] 
then
sleep 5
    echo "SUCCESS"
    exit 0
else
sleep 5
    echo "FAILURE"
    exit 1
fi
