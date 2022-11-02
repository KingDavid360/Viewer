import 'package:flutter/material.dart';
import 'package:viewer/constants.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  int current = 0;
  List<String> titles = ['Character', 'Animations', 'Saved'];
  List<IconData> icons = [Icons.person, Icons.settings, Icons.search];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KPrimaryColor,
        title: Text(
          titles.elementAt(current),
          style: TextStyle(
              color: KSecondaryColor,
              fontSize: 45,
              fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = icons.indexOf(Icons.person);
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 120,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: current == 0
                                      ? Colors.green
                                      : Color(0xffBDBDBD),
                                  offset: const Offset(
                                    0,
                                    5.0,
                                  ),
                                  blurRadius: 0,
                                  spreadRadius: 1.0,
                                ),
                              ],
                              color: current == 0
                                  ? Colors.green[300]
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              'Characters',
                              style: TextStyle(
                                  color: current == 0
                                      ? Colors.white
                                      : KSecondaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = icons.indexOf(Icons.settings);
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 120,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: current == 1
                                      ? Colors.green
                                      : Color(0xffBDBDBD),
                                  offset: const Offset(
                                    0,
                                    5.0,
                                  ),
                                  blurRadius: 0,
                                  spreadRadius: 1.0,
                                ),
                              ],
                              color: current == 1
                                  ? Colors.green[300]
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              'Animations',
                              style: TextStyle(
                                  color: current == 1
                                      ? Colors.white
                                      : KSecondaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = icons.indexOf(Icons.search);
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 90,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: current == 2
                                      ? Colors.green
                                      : Color(0xffBDBDBD),
                                  offset: const Offset(
                                    0,
                                    5.0,
                                  ),
                                  blurRadius: 0,
                                  spreadRadius: 1.0,
                                ),
                              ],
                              color: current == 2
                                  ? Colors.green[300]
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              'Saved',
                              style: TextStyle(
                                  color: current == 2
                                      ? Colors.white
                                      : KSecondaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Icon(icons[current]),
            ],
          ),
        ],
      ),
    );
  }
}
