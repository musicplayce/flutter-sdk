import 'package:get_it/get_it.dart';

import '../environment/environment.dart';

class TagsEndpoint {
  static final _env = GetIt.instance<Environment>();

  static final _apiHost = _env.get(EnvironmentKeys.apiHost);

  static String getAllTags = '$_apiHost/v1/tags';

  static String getTagById(String tagId) => '$_apiHost/v2/tags/$tagId';

  static String followTag(String tagId) =>
      '$_apiHost/v2/tags/$tagId/follow';

  static String getAllPostsByTagId(String tagId, [limit = 5]) =>
      '$_apiHost/v1/tags/$tagId/posts?limit=$limit';

  static String createTag = '$_apiHost/v1/tags';

  static String searchATagByName(String tagName) =>
      '$_apiHost/v1/tags/$tagName';

}
