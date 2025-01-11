import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_state_app/blocs/bloc/property_bloc.dart';
import 'package:real_state_app/models/Property.dart';
import 'package:real_state_app/screens/Catalog01Screen.dart';
import 'package:real_state_app/screens/Catalog03Screen.dart';
import 'package:real_state_app/screens/WelcomeScreen.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PropertyBloc()
          ..add(AddProperty(
            property: Property(
                imageUrl:
                    'https://s3-alpha-sig.figma.com/img/1886/ebfb/cc93488bfa10e408638b6349f9c551c7?Expires=1737331200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iroDTAQtGI7GYtGW35Q-O27rb1HutjeRi3HDNkMC2SMYJgxPOnL2r7-F5xk-GfvX79v7oSoW9EUjMZciJQ-IhJ3bSLUjvIouTKw--M20lGEE6kVFtKi0lyPLfCsIQI26lTmxE3Ttu1KzQcVBE2o4OMno~yC5HV99Gfzs2Y2Hoida53I5GBS4Qutl1ilHhqAOUNWfcbYRxITpFq8GYPWrmOaen0GAqpW9x0Os1PB1jbdToKTh0v~6wrKQM5ZtUTpkuujEESJ-cnLiE5gOsr5ZugbQoMoBh95W95S7Svu7yDWVuW2rA72gnzb1tlT4d4YRmK-aeNNCOnY493Wi2LuQGA__',
                beds: 3,
                bathrooms: 2,
                title: 'Luxury Villa',
                location: 'Russia, Moscow',
                price: '5467'),
          )),
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
          // home: const Catalog01screen(),
        ));
  }
}
