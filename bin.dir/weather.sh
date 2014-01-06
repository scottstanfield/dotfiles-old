t=`curl -s http://api.openweathermap.org/data/2.5/weather?q=Berkeley,CA | sed -e 's/.*\"temp.://' | sed -e 's/,.*//'`
echo "($t * 9/5) - 459.67" | bc
