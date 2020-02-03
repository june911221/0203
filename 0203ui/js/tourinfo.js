function city_time() {

var f = document.cnjform;

city_today = new Date();
city_year = city_today.getYear();
city_month = city_today.getMonth();
city_month = city_month + 1;
city_day = city_today.getDate();
city_hours = city_today.getHours();
city_minutes = city_today.getMinutes();
city_seconds = city_today.getSeconds();

zone = f.cityname.options[f.cityname.selectedIndex].value;
city_zone = f.cityname.options[f.cityname.selectedIndex].text
city_hours = parseInt(city_hours) + parseInt(zone);

if (city_hours < 0)
{
city_hours = city_hours + 24;
city_day = city_day - 1;
}

if (city_hours > 23)
{
city_hours = city_hours - 24;
city_day = city_day + 1;
}
var city_time1=((city_hours>12)?city_hours -12:city_hours)+((city_minutes<10)?":0":":")+city_minutes;
var city_time2=(city_hours>=12)?" PM ":" AM "
var citymonth=((city_month<10)?"0":"")+city_month
var cityday= ((city_day<10)?"0":"")+city_day;

var time =city_time2+city_time1

setTimeout("city_time()", 1000);

var regex= /[^a-z]/gi;
var regek= /[^��-�R]/gi;
str = city_zone.replace(regex,"");
ktr = city_zone.replace(regek,"");

var cityname = city_zone;
var Engcity = str;

changeView(Engcity,cityname,time,citymonth,cityday);

}




function changeView(Engcity,cityname,time,citymonth,cityday) { 

	 location.href = "tourcity.jsp?city="+Engcity+"&cityname="+cityname+"&time="+time+"&citymonth="+citymonth+"&cityday="+cityday;
} 
