import 'package:bloc/bloc.dart';

import 'package:realstateapp/models/Property.dart';
import 'package:realstateapp/repository/firestore_repository.dart';

part 'property_event.dart';

part 'property_state.dart';

class PropertyBloc extends Bloc<PropertyEvent, PropertyState> {
  final PropertyRepository _propertyRepository; // Inject the repository

  PropertyBloc(this._propertyRepository) : super(const PropertyState()) {
    on<GetAllProperties>(_onGetAllProperties);
  }

  Future<void> _onGetAllProperties(
      GetAllProperties event, Emitter<PropertyState> emit) async {
    try {
      emit(const PropertyState(loading: true)); // Update state to loading
      final properties = await _propertyRepository
          .getAllProperties(); // Fetch data from repository
      emit(PropertyState.success(properties)); // Update state with fetched data
    } catch (error) {
      emit(PropertyState.failure(error.toString())); // Handle errors
    }
  }
}
