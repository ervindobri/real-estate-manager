import 'package:skawa/data/models/property.dart';

abstract class PropertyRepository {
  Future<Property?> getProperty({required int id});
}
