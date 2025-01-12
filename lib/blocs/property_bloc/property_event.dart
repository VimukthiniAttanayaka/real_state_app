part of 'property_bloc.dart';

abstract class PropertyEvent {
  const PropertyEvent();

  @override
  List<Object> get props => [];
}

class GetAllProperties extends PropertyEvent {
  @override
  List<Object> get props => [];
}
