import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchWeatherDataForCities(List<String> cities) async {
  const apiKey = '03cb1628fc2496b5497b7f546380dd79';
  List<Map<String, dynamic>> weatherDataList = [];

  for (String city in cities) {
    final apiUrl =
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      weatherDataList.add(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather data for $city');
    }
  }

  return {
    'citiesWeatherData': weatherDataList,
  };
}
