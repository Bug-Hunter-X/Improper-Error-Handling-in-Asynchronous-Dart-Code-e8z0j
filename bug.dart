```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON string
      final jsonData = jsonDecode(response.body);
      // Access and process the data from jsonData
      print(jsonData['key']); // Example access to the 'key'
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle any errors during the API call or JSON decoding
    print('Error: $e');
    //Consider rethrowing the exception to be handled in higher layers
    rethrow;
  }
}
```