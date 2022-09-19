import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skawa/injection_container.dart';
import 'package:skawa/presentation/bloc/property_bloc.dart';
import 'package:skawa/presentation/pages/property_page.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider.value(
        value: sl<PropertyBloc>()
          ..add(const PropertyEvent.fetchProperty(id: 0)),
        child: const PropertyPage(),
      ),
    );
  }
}
