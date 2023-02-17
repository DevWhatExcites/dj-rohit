import 'package:flutter/material.dart';

class TeamCard extends StatelessWidget {
  TeamCard(this.index);
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 10),
                  child: Text(
                    "gibberish $index",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ))),
            Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                    child: Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "View Details",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))))),
                )))
          ],
        ),
      ),
    );
  }
}
