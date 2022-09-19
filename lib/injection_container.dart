import 'package:get_it/get_it.dart';
import 'package:skawa/data/datasources/property_remote_datasource.dart';
import 'package:skawa/data/repositories/property_repository.dart';
import 'package:skawa/domain/repositories/property_repository.dart';
import 'package:skawa/presentation/bloc/property_bloc.dart';

final sl = GetIt.instance;

void setup() {
  // bloc -> repository -> datasource
  sl.registerLazySingleton<PropertyBloc>(
    () => PropertyBloc(repository: sl()),
  );
  sl.registerLazySingleton<PropertyRepository>(
    () => PropertyRepositoryImpl(dataSource: sl()),
  );
  sl.registerLazySingleton<PropertyRemoteDataSource>(
    () => PropertyRemoteDataSourceImpl(
      // client: sl(), //inject network client (http, dio etc.)
    ),
  );

}
