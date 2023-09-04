abstract class Failure {
  final String message;

  Failure({required this.message});
}

class CacheFailure extends Failure {
  CacheFailure() : super(message: 'Cache Failure');
}