```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Re-throw the error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exception and re-throw for further handling up the callstack 
    print('Error fetching data: $e');
    rethrow; // This will rethrow the caught exception
  }
}
```