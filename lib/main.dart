import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NavigationRailScreen(),
    );
  }
}

class NavigationRailScreen extends StatefulWidget {
  const NavigationRailScreen({super.key});

  @override
  State<NavigationRailScreen> createState() => _NavigationRailScreenState();
}

class _NavigationRailScreenState extends State<NavigationRailScreen> {
  int _selected_index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            NavigationRail(
                backgroundColor: Colors.black,
                destinations: const [
                  NavigationRailDestination(
                      icon: Icon(
                        Icons.wifi,
                        color: Colors.white,
                      ),
                      label: Text("Wifi")),
                  NavigationRailDestination(
                      icon: Icon(
                        Icons.ac_unit,
                        color: Colors.white,
                      ),
                      label: Text("Unit")),
                ],
                selectedIndex: _selected_index)
          ],
        ),
      ),
    );
  }
}
