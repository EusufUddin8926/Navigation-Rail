import 'package:flutter/material.dart';
import 'package:navigation_rail/first_screen.dart';
import 'package:navigation_rail/second_screen.dart';

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
  final _pages = [
    first_screen(),
    second_screen()
  ];

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
                    label: Text("Wifi"),
                    selectedIcon: Icon(
                      Icons.wifi,
                      color: Colors.blue,
                    )),
                NavigationRailDestination(
                    icon: Icon(
                      Icons.ac_unit,
                      color: Colors.white,
                    ),
                    label: Text("Unit"),
                    selectedIcon: Icon(
                      Icons.ac_unit,
                      color: Colors.blue,
                    )),
              ],
              selectedIndex: _selected_index,
              onDestinationSelected: (val) {
                setState(() {
                  _selected_index = val;
                });
              },
            ),
            Expanded(
                child: Container(
                  child: _pages[_selected_index],
                ))
          ],
        ),
      ),
    );
  }
}
