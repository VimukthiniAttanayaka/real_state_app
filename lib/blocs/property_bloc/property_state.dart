part of 'property_bloc.dart';

class PropertyState {
  final bool loading;
  final List<Property> properties;
  final String? error;

  const PropertyState({
    this.loading = false,
    this.properties = const [],
    this.error,
  });

  const PropertyState.loading() : this(loading: true);

  const PropertyState.success(List<Property> properties)
      : this(loading: false, properties: properties);

  const PropertyState.failure(String error)
      : this(loading: false, error: error);
}
