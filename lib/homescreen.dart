import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  VoidCallback toggleTheme;
  bool Valuee;
  HomeScreen({required this.Valuee,required this.toggleTheme,super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  bool isValue = false;
  Widget build(BuildContext context) {
      final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Testing Themes"),
        actions: [
          Switch.adaptive(value: isValue, onChanged: (bool newValue){
            setState(() {
              isValue = newValue;
            });
            widget.toggleTheme();
          },
          activeThumbColor: Colors.green,
          inactiveThumbColor: Colors.red,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Testing Themes",style: theme.textTheme.bodyLarge),
            SizedBox(height: 100,),
            Text("Theme Active: ",style: theme.textTheme.titleSmall,),
          ],
        ),
      ),
    );
  }
}