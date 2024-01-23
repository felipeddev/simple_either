# Simple Either

Simple Either - a Dart library designed to facilitate functional programming through the
implementation of the Either monad. This package provides a structured approach
for handling two possible outcomes (typically success and failure) in a 
functional paradigm.

## Features

- Either Monad Implementation
    - Left and Right classes for handling success and failure

## Getting started

To start using the "simple_either" package, follow these steps:

1. Add the dependency to your project's `pubspec.yaml` file:
```yaml
dependencies:
  simple_either: ^1.0.0
```
Save the file and run `pub get` in your project directory to fetch and install the package.

2. Import the package into your project:

```dart
import 'package:simple_either/simple_either.dart';
```

## Usage

Explore the examples below to see how to use the "simple_either" package.

```dart
import 'package:simple_either/simple_either.dart';
import 'dart:async';

Either<Error, SuccessType> syncFunction() {
    try {
        // Do something that might throw an error
        return Right(SuccessType());
    } catch (e) {
        return Left(Error());
    }
}

Future<Either<Error, SuccessType>> asyncFunction() async {
    try {
        // Do something that might throw an error
        return Right(SuccessType());
    } catch (e) {
        return Left(Error());
    }
}
```


## Additional information

Check the [GitHub](https://github.com/felipeddev/either) repository for any additional information, issues, or 
community 
discussions.
