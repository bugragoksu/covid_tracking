import 'package:covid_tracking/domain/failure/failure.dart';

class ResponseFailure extends Failure {
  const ResponseFailure({
    required this.errorStatus,
    required String message,
  }) : super(message: message);

  final int errorStatus;
}
