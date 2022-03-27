class ResponseException {
  ResponseException({
    required this.message,
    this.statusCode,
  });
  final String message;
  final int? statusCode;
}
