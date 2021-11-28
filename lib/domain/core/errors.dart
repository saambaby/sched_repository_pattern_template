 import 'package:sched/domain/core/failures/failures.dart';


 class NotAuthenticatedError extends Error{}
class UnexpectedValueError extends Error{
  final ValueFailure valueFailure;
  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const errorExplanation= 'Encountered an unexpected ValueError. Please try'
        ' again later ';
    return Error.safeToString('$errorExplanation The Failure was:$valueFailure}');
  }
}