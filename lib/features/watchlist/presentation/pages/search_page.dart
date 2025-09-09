import 'package:flutter/material.dart';

class DummySearchPage extends StatelessWidget {
  const DummySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search")),
      body: const Center(child: Text("Dummy Search Screen")),
    );
  }
}
