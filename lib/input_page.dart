import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

const bottomContainerHeight = 80.0;

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
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    childWidget:
                        GenderChild(iconData: Icons.male, label: "MALE"),
                  ),
                ),
                Expanded(
                    child: MyContainer(
                  childWidget:
                      GenderChild(iconData: Icons.female, label: "FEMALE"),
                ))
              ],
            ),
          ),
          const Expanded(child: MyContainer()),
          const Expanded(
            child: Row(
              children: [
                Expanded(child: MyContainer()),
                Expanded(child: MyContainer())
              ],
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.tertiaryContainer,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({this.color, this.childWidget});

  final Color? color;
  final Widget? childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color ?? Theme.of(context).colorScheme.surfaceBright,
          borderRadius: BorderRadius.circular(20.0)),
      child: childWidget,
    );
  }
}

class GenderChild extends StatelessWidget {
  final IconData iconData;
  final String label;

  const GenderChild({required this.iconData, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: MediaQuery.of(context).size.width * 0.2,
        ),
        SizedBox(height: 8.0),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width * 0.08,
          ),
        ),
      ],
    );
  }
}
