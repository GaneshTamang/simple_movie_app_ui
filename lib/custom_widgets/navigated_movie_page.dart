import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('we will watch movie'),
      ),
      body: const Center(child: Text('helloworld')),
    );
  }
}
