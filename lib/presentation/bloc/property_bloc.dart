import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skawa/data/models/property.dart';
import 'package:skawa/domain/repositories/property_repository.dart';

part 'property_event.dart';
part 'property_state.dart';
part 'property_bloc.freezed.dart';

class PropertyBloc extends Bloc<PropertyEvent, PropertyState> {
  final PropertyRepository repository;
  PropertyBloc({required this.repository}) : super(const _Initial()) {
    on<PropertyEvent>((event, emit) async {
      event.when(
        fetchProperty: (id) async {
          emit(const PropertyState.loading());
          await repository.getProperty(id: id).then((result) {
            // await Future.delayed(const Duration(milliseconds: 500));
            if (result != null) {
              emit(PropertyState.success(property: result));
            } else {
              emit(const PropertyState.error(message: "what"));
            }
          });
        },
        started: () => emit(const PropertyState.initial()),
      );
    });
  }
}
