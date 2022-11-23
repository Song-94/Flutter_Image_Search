import 'dart:math';

import 'package:image_search/data/data_source/result.dart';
import 'package:image_search/domain/model/photo.dart';
import 'package:image_search/domain/repository/photo_api_repository.dart';

class GetPhotosUseCase {
  final PhotoApiRepository repository;

  GetPhotosUseCase({required this.repository});

  // execute -> call 로 명명을 바꾸면서 생략이 가능하게끔.
  // Future<Result<List<Photo>>> execute(String query) async {
  Future<Result<List<Photo>>> call(String query) async {
    final result = await repository.fetch(query);

    return result.when(success: (photos) {
      return Result.success(photos.sublist(0, min(3, photos.length)));
    }, error: (message) {
      return Result.error(message);
    });
  }
}
