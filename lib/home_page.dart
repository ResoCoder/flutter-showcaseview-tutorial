import 'package:flutter/material.dart';
import 'package:showcase_water_tracker_prep/settings_page.dart';
import 'package:showcase_water_tracker_prep/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.help_rounded,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SettingsPage(),
                ),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.indigo[400],
        title: const AppBarTitle(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigo[900],
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupsNumberDisplay(
                size: 200,
              ),
              const SizedBox(
                height: 60,
              ),
              CupsGoal(),
            ],
          ),
        ),
      ),
    );
  }
}
