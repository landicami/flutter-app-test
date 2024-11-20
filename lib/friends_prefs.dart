import 'package:flutter/material.dart';
import 'package:friend_advisor/styled_body_text.dart';
import 'package:friend_advisor/styled_button.dart';

class FriendsPrefs extends StatefulWidget {
  const FriendsPrefs({super.key});

  @override
  State<FriendsPrefs> createState() => _FriendsPrefsState();
}

class _FriendsPrefsState extends State<FriendsPrefs> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          const StyledBodyText('Team-spirit: '),
          Text('$strength'),
          const Expanded(child: SizedBox()),
          for (int i = 0; i < strength; i++)
            Image.asset(
              'assets/img/lasPres.png',
              width: 25,
            ),
          const SizedBox(width: 8),
          StyledButton(
              onPressed: increaseStrength, child: const Text('Press me')),
        ]),
        Row(children: [
          const StyledBodyText('Cuteness: '),
          Text('$sugars'),
          const Expanded(child: SizedBox()),
          if (sugars == 0)
            const Text(
              'No cuties',
              style: TextStyle(color: Colors.white),
            ),
          for (int i = 0; i < sugars; i++)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Image.asset(
                'assets/img/lasPres.png',
                width: 25,
              ),
            ),
          const SizedBox(width: 8),
          StyledButton(
              onPressed: increaseSugars, child: const Text('Press me')),
        ]),
      ],
    );
  }
}
