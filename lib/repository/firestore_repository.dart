import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:realstateapp/models/Property.dart';

const String PROPERTY_COLLECTION_RFF = 'realstateappcollection';

class PropertyRepository {
  final _firestore = FirebaseFirestore.instance;
  late final CollectionReference _propertyRef;

  PropertyRepository() {
    _propertyRef =
        _firestore.collection(PROPERTY_COLLECTION_RFF).withConverter<Property>(
            fromFirestore: (snapshots, _) => Property.fromJson(
                  snapshots.data()!,
                ),
            toFirestore: (property, _) => property.toJson());
  }

  Future<List<Property>> getAllProperties() async {
    final querySnapshot = await _propertyRef.get();
    return querySnapshot.docs.map((doc) => doc.data() as Property).toList();
  }
}
