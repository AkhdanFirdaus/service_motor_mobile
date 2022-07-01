import 'package:dartz/dartz.dart';
import 'package:service_motor_mobile/domain/core/failures.dart';
import 'package:service_motor_mobile/domain/core/value_objects.dart';
import 'package:service_motor_mobile/domain/core/value_validators.dart';

class MessageText extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory MessageText(String input) {
    return MessageText._(
      validateStringNotEmpty(input),
    );
  }

  const MessageText._(this.value);
}
