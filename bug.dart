```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns JSON
      final jsonResponse = json.decode(response.body);
      // Accessing data - potential error if the JSON structure is unexpected
      final data = jsonResponse['data']; 
      // Further processing of 'data'
      print(data);
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately (e.g., show an error message to the user)
  }
}
```