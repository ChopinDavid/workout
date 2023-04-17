import 'package:flutter/material.dart';
import 'package:workout/models/exercise.dart';
import 'package:workout/screens/exercise_page.dart';

class ArmsPage extends StatelessWidget {
  const ArmsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Arm Exercises')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Pick an exercise:'),
          const SizedBox(height: 16.0),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ExercisePage(
                        exercise: Exercise(
                            name: 'Bicep Curls',
                            imagePath: 'assets/bicep_curls.jpg'))),
              );
            },
            child: Text(
              'Bicep Curls',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          const SizedBox(height: 8.0),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ExercisePage(
                        exercise: Exercise(
                            name: 'Dips', imagePath: 'assets/dips.jpg'))),
              );
            },
            child: Text(
              'Dips',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      )),
    );
  }
}
