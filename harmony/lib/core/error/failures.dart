abstract class Failure {
  final String message;

  Failure({required this.message});
}

class CacheFailure extends Failure {
  CacheFailure() : super(message: 'Cache Failure');
}

class ServerFailure extends Failure {
  ServerFailure() : super(message: 'Server Failure');
}