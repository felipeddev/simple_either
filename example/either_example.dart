import 'package:simple_either/simple_either.dart';

void main() {
  final foo = Foo();
  final result1 = foo.execute('42');

  result1.fold(
    (l) => print(l.exception),
    (r) => print(r.value), // 42
  );

  final result2 = foo.execute('foo');

  result2.fold(
    (l) => print(l.exception), // FormatException
    (r) => print(r.value),
  );
}

class Foo {
  Either<Baz, Bar> execute(dynamic params) {
    try {
      final result = int.parse(params);
      return Right(Bar(result));
    } on Exception catch (e) {
      return Left(Baz(e));
    }
  }
}

class Bar {
  final int value;

  const Bar(this.value);
}

class Baz {
  final Exception exception;

  const Baz(this.exception);
}
