import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skawa/presentation/bloc/property_bloc.dart';
import 'package:skawa/presentation/widgets/property_card.dart';

class PropertyPage extends StatelessWidget {
  const PropertyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("House every weekend"),
      ),
      body: BlocBuilder<PropertyBloc, PropertyState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const CircularProgressIndicator(),
            error: (message) => Text("Error:$message"),
            success: (data) => PropertyCard(property: data),
          );
        },
      ),
    );
  }
}
