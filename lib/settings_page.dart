import 'package:flutter/material.dart';
import 'package:showcase_water_tracker_prep/widgets.dart';
import 'package:showcaseview/showcaseview.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _key1 = GlobalKey();
  BuildContext? myContext;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 400), () {
        ShowCaseWidget.of(myContext!)!.startShowCase([_key1]);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ShowCaseWidget(
      builder: Builder(
        builder: (context) {
          myContext = context;
          return Scaffold(
            appBar: AppBar(
              toolbarHeight: 70,
              centerTitle: true,
              backgroundColor: Colors.indigo[400],
              title: const Text('Settings'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Showcase(
                  key: _key1,
                  title: 'Change Your Water Intake Goal',
                  description:
                      'Increase or decrease the number of cups for your goal',
                  showcaseBackgroundColor: Colors.indigo,
                  textColor: Colors.white,
                  child: SettingsControls(),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Adjust your water intake goal',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
