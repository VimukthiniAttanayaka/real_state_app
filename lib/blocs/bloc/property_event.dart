part of 'property_bloc.dart';

abstract class PropertyEvent {
  const PropertyEvent();

  @override
  List<Object> get props => [];
}

class AddProperty extends PropertyEvent {
  final Property property;

  const AddProperty({required this.property});

  @override
  List<Object> get props => [property];
}
