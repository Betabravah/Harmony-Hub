abstract class Exception {
  final String message;

  Exception({required this.message});
}

class CacheException implements Exception {
  final String message;

  CacheException({required this.message});
}