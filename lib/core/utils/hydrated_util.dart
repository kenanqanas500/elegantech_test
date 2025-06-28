import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

class HydratedUtil {
  static Future<void> init() async {
    final storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(await _getStorageDirectory()),
    );
    HydratedBloc.storage = storage;
  }

  static Future<String> _getStorageDirectory() async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }
}
