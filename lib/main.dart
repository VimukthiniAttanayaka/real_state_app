import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:realstateapp/blocs/bloc_exports.dart';
import 'package:realstateapp/firebase_options.dart';
import 'package:realstateapp/repository/firestore_repository.dart';
import 'package:realstateapp/screens/Catalog01Screen.dart';
import 'package:realstateapp/screens/Catalog03Screen.dart';
import 'package:realstateapp/screens/WelcomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseFirestore.instance.settings =
      const Settings(persistenceEnabled: true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) {
          final propertyBloc = PropertyBloc(PropertyRepository());
          propertyBloc.add(GetAllProperties());
          return propertyBloc;
        },
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: '/welcome',
          routes: {
            '/welcome': (context) => WelcomeScreen(),
            '/catalog01': (context) => Catalog01screen(),
            '/catalog03': (context) => Catalog03screen(),
          },
        ));
  }
}
