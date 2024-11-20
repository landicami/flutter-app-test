import 'package:flutter/material.dart';
import 'package:friend_advisor/friends_prefs.dart';
import 'package:friend_advisor/styled_body_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'TravelWise',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blueGrey[600],
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                color: Colors.black,
                padding: const EdgeInsets.all(20),
                child: const StyledBodyText('How I like my team')),
            const SizedBox(
                height: 16), // 16 är en vanlig spacing i Material Design

            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )),
                padding: const EdgeInsets.all(20),
                child: const FriendsPrefs()),
            Expanded(
                child: Image.asset(
              'assets/img/lasPres.png',
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomCenter,
            )),
          ],
        ));
  }
}
