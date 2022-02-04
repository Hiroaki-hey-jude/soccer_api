import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soccer/screen/table_screen.dart';
import 'package:soccer/widget/league_container.dart';

class HomeScreen extends  StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            colors: [
              const Color(0xffe4a972).withOpacity(0.6),
              const Color(0xff9941d8).withOpacity(0.6),
            ],
            stops: const [
              0.0,
              1.0,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'リーグ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: [
                  GestureDetector(
                    child: const LeagueContainer(image: 'assets/pl.png'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TableScreen(code: 'PL'),
                          ));
                    },
                  ),
                  GestureDetector(
                    child: const LeagueContainer(image: 'assets/laliga.png'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TableScreen(code: 'PD'),
                          ));
                    },
                  ),
                  GestureDetector(
                    child: const LeagueContainer(image: 'assets/bundesliga.png'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TableScreen(code: 'BL1'),
                          ));
                    },
                  ),
                  GestureDetector(
                    child: const LeagueContainer(image: 'assets/seria.png'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TableScreen(code: 'SA'),
                          ));
                    },
                  ),
                  GestureDetector(
                    child: const LeagueContainer(image: 'assets/ligue1.png'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TableScreen(code: 'FL1'),
                          ));
                    },
                  ),
                  GestureDetector(
                    child: const LeagueContainer(image: 'assets/nos.png'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TableScreen(code: 'PPL'),
                          ));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
