import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      FaIcon(
        FontAwesomeIcons.tint,
        color: Colors.blue[100],
        size: 20,
      ),
      const SizedBox(width: 5),
      const Text('Water Tracker'),
    ]);
  }
}

class CupsNumberDisplay extends StatelessWidget {
  final double size;

  const CupsNumberDisplay({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.indigo[400],
      ),
      child: Center(
        child: Text(
          '7',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}

class CupsGoal extends StatelessWidget {
  const CupsGoal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Water Intake Goal',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey[700],
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Wrap(
            runSpacing: 10,
            children: [
              for (int i = 1; i <= 2; i++)
                Icon(
                  Icons.local_drink,
                  size: 50,
                  color: Colors.blue[200],
                ),
              for (int i = 1; i <= 5; i++)
                Icon(
                  Icons.local_drink,
                  size: 50,
                  color: Colors.grey,
                )
            ],
          ),
        ),
      ],
    );
  }
}

class SettingsControlButton extends StatelessWidget {
  final IconData icon;
  const SettingsControlButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        size: 40,
      ),
    );
  }
}

class SettingsControls extends StatelessWidget {
  const SettingsControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: SettingsControlButton(icon: Icons.remove),
        ),
        Expanded(
          child: CupsNumberDisplay(
            size: 150,
          ),
        ),
        Expanded(
          child: SettingsControlButton(icon: Icons.add),
        ),
      ],
    );
  }
}
