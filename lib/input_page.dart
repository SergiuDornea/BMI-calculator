import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'widgets.dart';

const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double height = 170;
  double weight = 70;
  int age = 20;

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
                          GenderChild(iconData: Icons.male, label: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {},
                  child: const MyContainer(
                    childWidget:
                        GenderChild(iconData: Icons.female, label: 'FEMALE'),
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
                  child: CustomText(label: 'HEIGHT'),
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
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: MyContainer(
                  childWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CustomText(label: 'WEIGHT'),
                      Text(
                        '$weight kg',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      IconButtonsRow(
                        addPressed: () {},
                        minusPressed: () {},
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: MyContainer(
                  childWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CustomText(label: 'AGE'),
                      Text(
                        '$age',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      IconButtonsRow(
                        addPressed: () {},
                        minusPressed: () {},
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.tertiaryContainer,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            child: Center(
              child: Text(
                "CALCULATE YOUR BMI",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          )
        ],
      ),
    );
  }
}
