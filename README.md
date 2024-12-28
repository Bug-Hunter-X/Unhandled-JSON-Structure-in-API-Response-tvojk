# Dart API Response Handling Bug
This repository demonstrates a common error in Dart code that handles API responses. The code assumes a specific JSON structure and doesn't check for potential errors or variations in the response. This can lead to runtime exceptions.

## Bug Description
The `fetchData` function in `bug.dart` fetches data from an API.  It assumes that the JSON response will always contain a `data` key. If the server returns an unexpected JSON structure, or an error (non-200 status code), the app will throw an exception.

## Solution
The `bugSolution.dart` file provides an improved version of the `fetchData` function. This improved version adds checks to handle different response scenarios gracefully and avoid unexpected exceptions.
