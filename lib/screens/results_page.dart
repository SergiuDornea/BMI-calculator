import 'package:flutter/material.dart';
import '../components/my_container.dart';
import 'input_page.dart';

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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 60.0),
                    Text(
                      'OVERWEIGHT',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    SizedBox(height: 60.0),
                    Text(
                      '28.4',
                      style: TextStyle(
                        fontSize: 70.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 60.0),
                    Text(
                      'You are fat, go to the gym.',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 60.0),
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
