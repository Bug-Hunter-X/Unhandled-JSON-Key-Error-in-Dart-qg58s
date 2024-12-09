# Unhandled JSON Key Error in Dart

This repository demonstrates a common error in Dart when handling JSON responses from external APIs:  an exception is thrown if the JSON response is missing an expected key.

The `bug.dart` file contains code that attempts to access a JSON key that may not exist. The `bugSolution.dart` file shows how to handle this situation gracefully.

## How to reproduce the bug:

1. Run `bug.dart`.
2. If the API at https://example.com/data does not contain the key `myData`, the code will throw an exception.

## Solution:

The `bugSolution.dart` file demonstrates a safer way to access the key by using `jsonData['myData']` which returns `null` if the key is absent rather than throwing an error.  Always check for `null` before using the data. 