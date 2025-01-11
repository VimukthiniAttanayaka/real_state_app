part of 'property_bloc.dart';

class PropertyState {
  final List<Property> allProperty;

  const PropertyState({
    this.allProperty = const <Property>[],
  });

  @override
  List<Object> get props => [allProperty];
}
