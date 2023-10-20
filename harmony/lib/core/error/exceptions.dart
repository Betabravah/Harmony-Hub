abstract class Exception {
  final String message;

  Exception({required this.message});
}

class CacheException implements Exception {
  @override
  final String message;

  CacheException({required this.message});
}

class ServerException implements Exception {
  @override
  final String message;

  ServerException({required this.message});
}