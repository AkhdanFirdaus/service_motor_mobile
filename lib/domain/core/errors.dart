import 'failures.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedError extends Error {
  final ValueFailure valueFailure;

  UnexpectedError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
