import 'package:flutter/material.dart';
import '../components/custom_text.dart';
import '../components/icon_button_row.dart';
import '../components/my_container.dart';
import 'results_page.dart';

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
  bool selectedMale = true;

  Color updateColor(bool selectedGender) {
    if (selectedGender == selectedMale) {
      return Theme.of(context).colorScheme.primaryContainer;
    } else {
      return Theme.of(context).colorScheme.surfaceBright;
    }
  }

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
                    onTap: () {
                      setState(() {
                        selectedMale = true;
                      });
                    },
                    child: MyContainer(
                      color: updateColor(true),
                      childWidget:
                          GenderChild(iconData: Icons.male, label: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedMale = false;
                    });
                  },
                  child: MyContainer(
                    color: updateColor(false),
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
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 25.0),
                  ),
                  child: Slider(
                      value: height,
                      min: 100,
                      max: 220,
                      activeColor:
                          Theme.of(context).colorScheme.tertiaryContainer,
                      inactiveColor:
                          Theme.of(context).colorScheme.inversePrimary,
                      label: height.toStringAsFixed(0),
                      onChanged: (double newHeight) {
                        setState(() {
                          height = newHeight;
                        });
                      }),
                )
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
                        addPressed: () {
                          setState(() {
                            if (weight > 20 && weight < 500) {
                              weight++;
                            }
                          });
                        },
                        minusPressed: () {
                          setState(() {
                            if (weight > 0 && weight < 500) {
                              weight--;
                            }
                          });
                        },
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
                        addPressed: () {
                          setState(() {
                            if (age > 0 && age < 120) {
                              age++;
                            }
                          });
                        },
                        minusPressed: () {
                          setState(() {
                            if (age > 0 && age < 120) {
                              age--;
                            }
                          });
                        },
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(),
                ),
              );
            },
            child: Container(
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
            ),
          )
        ],
      ),
    );
  }
}
