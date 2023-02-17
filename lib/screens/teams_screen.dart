import 'package:flutter/material.dart';
import 'package:ui/widgets/team_card.dart';

class TeamsScreen extends StatelessWidget {
  final List<String> items;

  const TeamsScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    const title = 'Long List';

    return MaterialApp(
      title: title,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/home.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView.builder(
            itemCount: items.length,
            prototypeItem: ListTile(
              title: SizedBox(
                width: 70,
                height: 100,
                child: Column(
                  children: [
                    Text(items.first),
                  ],
                ),
              ),
            ),
            itemBuilder: (context, index) {
              return ListTile(
                title: Column(
                  //this is for you
                  // children: [Text(items[index]), TeamCard(index)],
                  children: [TeamCard(index)],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
