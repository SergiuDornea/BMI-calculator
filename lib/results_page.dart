import 'package:flutter/material.dart';
import 'input_page.dart';
import 'widgets.dart';

class ResultsPage extends StatelessWidget {
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
          const Expanded(
            child: MyContainer(
              childWidget: SizedBox.expand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('OVERWEIGHT')
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
