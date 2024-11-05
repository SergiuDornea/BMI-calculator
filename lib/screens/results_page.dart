import 'package:flutter/material.dart';
import '../components/my_container.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String bmi;
  final String bmiInterpretation;

  ResultsPage(
      {required this.bmi,
      required this.bmiResult,
      required this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Your Result',
            style: TextStyle(fontSize: 50.0),
          ),
          Expanded(
            child: MyContainer(
              childWidget: SizedBox.expand(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60.0),
                    Text(
                      bmiResult,
                      style: const TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    const SizedBox(height: 60.0),
                    Text(
                      bmi,
                      style: const TextStyle(
                        fontSize: 70.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 60.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        bmiInterpretation,
                        style: const TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 60.0),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const InputPage(title: 'BMI Calculator'),
                ),
              );
            },
            child: Container(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80,
              child: Center(
                child: Text(
                  "RE-CALCULATE",
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
