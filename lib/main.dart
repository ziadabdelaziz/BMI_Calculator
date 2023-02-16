import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF090e1c),
        //container: 1b1a2e
        //button: e9134c
        //circles: 434554
        primaryColor: const Color(0xFF1b1a2e),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xFFe9134c)),

        textTheme: const TextTheme(
          bodyLarge: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          labelMedium: TextStyle(color: Color(0xFF434554), fontSize: 18),
        ),
      ),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Cell(child: Center(child: Text('yub'))),
                Cell(child: Center(child: Text('yub'))),
              ],
            ),
          ),
          const Cell(child: Center(child: Text('yub'))),
          Expanded(
            child: Row(
              children: const [
                Cell(child: Center(child: Text('yub'))),
                Cell(child: Center(child: Text('yub'))),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: theme.colorScheme.secondary,
            minWidth: double.infinity,
            padding: const EdgeInsets.all(25),
            child: Text(
              'CALCULATE',
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}

class Cell extends StatelessWidget {
  const Cell({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
  final theme = Theme.of(context);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Container(
            color: theme.primaryColor,
            child: child,
          ),
        ),
      ),
    );
  }
}
