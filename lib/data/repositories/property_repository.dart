import 'package:skawa/data/datasources/property_remote_datasource.dart';
import 'package:skawa/data/models/property.dart';
import 'package:skawa/domain/repositories/property_repository.dart';

class PropertyRepositoryImpl extends PropertyRepository {
  final PropertyRemoteDataSource dataSource;

  PropertyRepositoryImpl({required this.dataSource});

  @override
  Future<Property?> getProperty({required int id}) async {
    return dataSource.getProperty(id: id);
  }
}
