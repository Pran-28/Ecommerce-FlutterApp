import 'package:ecommerce_app/views/buyers/screens/widgets/search_input.dart';
import 'package:ecommerce_app/views/buyers/screens/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          WelcomeText(),
          SearchInputWidget()
        ],
      ),
    );
  }
}
