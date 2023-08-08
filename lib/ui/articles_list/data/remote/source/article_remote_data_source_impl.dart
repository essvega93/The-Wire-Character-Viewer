import 'package:injectable/injectable.dart';
import '../service/article_service.dart';

import 'article_remote_data_source.dart';

@Injectable(as: ArticleRemoteDataSource)
class ArticleRemoteDataSourceImpl implements ArticleRemoteDataSource {
  ArticleRemoteDataSourceImpl(this._service);

  final ArticleService _service;

  @override
  Future<String> getTasks() =>
      _service.getTasks();
}
