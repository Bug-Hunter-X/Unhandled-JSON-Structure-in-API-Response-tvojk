```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      // Check if 'data' key exists before accessing it
      if (jsonResponse.containsKey('data')) {
        final data = jsonResponse['data'];
        print(data);
      } else {
        print('Warning: Response does not contain the expected "data" key.');
        // Handle the case where 'data' is missing
      }
    } else {
      // Provide more specific error handling based on status code
      print('Error: API request failed with status code ${response.statusCode}.');
    }
  } catch (e) {
    print('Error: $e');
    // More robust error handling (e.g., logging, user feedback)
  }
}
```