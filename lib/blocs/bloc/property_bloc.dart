import 'package:bloc/bloc.dart';

import 'package:real_state_app/models/Property.dart';

part 'property_event.dart';
part 'property_state.dart';

class PropertyBloc extends Bloc<PropertyEvent, PropertyState> {
  PropertyBloc(): super(const PropertyState()) {
    on<AddProperty>(_onAddProperty);
  }

  void _onAddProperty(AddProperty event, Emitter<PropertyState> emit) {
    final state = this.state;
    emit(PropertyState(
      allProperty: List.from(state.allProperty)..add(event.property)
    ));
  }
}