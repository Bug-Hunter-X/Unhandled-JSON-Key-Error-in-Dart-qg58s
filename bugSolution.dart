```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      //Safely access data
      final String? data = jsonData['myData'];
      if(data != null){
        print(data);
      } else {
        print('Key not found');
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```