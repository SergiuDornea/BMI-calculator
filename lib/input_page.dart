import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(widget.title),
      ),
      body: const Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: MyContainer()),
                Expanded(child: MyContainer())
              ],
            ),
          ),
          Expanded(child: MyContainer()),
          Expanded(
            child: Row(
              children: [
                Expanded(child: MyContainer()),
                Expanded(child: MyContainer())
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceBright,
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
