import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themechange/theme_provider.dart';

class NyHome extends StatelessWidget {
  const NyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: ElevatedButton(onPressed: (){
          Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
        }, child: Text("change theme")),
      ),
    );
  }
}