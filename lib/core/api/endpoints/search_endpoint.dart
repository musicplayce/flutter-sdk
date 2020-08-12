import 'package:get_it/get_it.dart';
import 'package:music_playce_sdk/core/api/environment.dart';

class SearchEndpoint {
  static final _env = GetIt.instance<Environment>();

  static String search =
      "${_env.apiHost}/v1/search";
}