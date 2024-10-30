import 'dart:math';

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
  double height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: const MyContainer(
                      childWidget:
                          GenderChild(iconData: Icons.male, label: "MALE"),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    print("hit");
                  },
                  child: const MyContainer(
                    childWidget:
                        GenderChild(iconData: Icons.female, label: "FEMALE"),
                  ),
                ))
              ],
            ),
          ),
          Expanded(
              child: MyContainer(
            childWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: CustomText(label: "HEIGHT"),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '${height.toStringAsFixed(0)} cm',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8.0),
                Slider(
                    value: height,
                    min: 100,
                    max: 220,
                    label: height.toStringAsFixed(0),
                    onChanged: (double newHeight) {
                      setState(() {
                        height = newHeight;
                      });
                    })
              ],
            ),
          )),
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
        const SizedBox(height: 8.0),
        CustomText(label: label),
      ],
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: MediaQuery.of(context).size.width * 0.08,
      ),
    );
  }
}
