import 'package:dartz/dartz.dart';
import 'package:wireviewer/core/api_error.dart';

import '../../data/model/character_response.dart';

abstract class ArticleUseCase {
  Future<Either<ApiError, CharacterResponse>> requestNews();
}
