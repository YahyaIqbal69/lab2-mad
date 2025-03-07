import 'dart:async';
import 'dart:math';

Future <String> fetchWeatherData() async {
await Future.delayed(Duration(seconds:3));


final random= Random();

if(random.nextBool()){
 return 'Weather is sunny , 27°C';

}
else{
throw Exception('Failed to fetch weather data ');

}

 }

void main() async{
print('Starting weather fetch.... ');

try{

final weather = await fetchWeatherData();
print('✅ Success! $weather');

}
catch(e){
print('❌ Error: $e');

}

 print('🏁 Program completed');

}