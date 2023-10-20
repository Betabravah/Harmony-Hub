import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../../core/constants/constants.dart';
import '../../../../../core/error/exceptions.dart';
import '../../../domain/repositories/music_repository.dart';
import '../../models/music_model.dart';
import 'music_remote_datasource.dart';

class MusicRemoteDataSourceImpl implements MusicRemoteDataSource {
  final http.Client client;
  final MusicRepository repository;

  MusicRemoteDataSourceImpl({required this.client, required this.repository});

  @override
  Future<List<MusicModel>> filterMusics(String query) async {
    try {
      final response = await client.get(Uri.parse('$apiBaseUrl?q=$query'));

      if (response.statusCode == 200) {
        try {
          final decoded = jsonDecode(response.body)['items'];
          final musics =
              decoded.map<MusicModel>((e) => MusicModel.fromJson(e)).toList();

          return musics;
        } catch (e) {
          throw ServerException(message: 'Invalid Response');
        }
      } else {
        throw ServerException(message: 'Failed to load musics');
      }
    } catch (e) {
      throw ServerException(message: 'Connection Failed');
    }
  }

  @override
  Future<MusicModel> getMusic(String id) async {
    try {
      final response = await client.get(Uri.parse('$apiBaseUrl/&id=$id'));

      if (response.statusCode == 200) {
        try {
          final decoded = jsonDecode(response.body)['items'];

          final musicModel = MusicModel.fromJson(decoded);

          return musicModel;
        } catch (e) {
          throw ServerException(message: 'Invalid Response');
        }
      } else {
        throw ServerException(message: 'Operation Failed');
      }
    } catch (e) {
      throw ServerException(message: 'Connection Failed');
    }
  }

  @override
  Future<List<MusicModel>> getMusics() async {
    try {
      final response = await client.get(Uri.parse(apiBaseUrl));

      if (response.statusCode == 200) {
        try {
          final decoded = jsonDecode(response.body)['items'];
          final musics =
              decoded.map<MusicModel>((e) => MusicModel.fromJson(e)).toList();

          return musics;
        } catch (e) {
          throw ServerException(message: 'Invalid Response');
        }
      } else {
        throw ServerException(message: 'Failed to load musics');
      }
    } catch (e) {
      throw ServerException(message: 'Connection Failed');
    }
  }
}
