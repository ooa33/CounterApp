import 'package:flutter/material.dart';

void main() {
  runApp(Pointscounter());
}

class Pointscounter extends StatefulWidget {
  @override
  State<Pointscounter> createState() => _PointscounterState();
}

class _PointscounterState extends State<Pointscounter> {
  int TeamAPoints = 0;

  int TeamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('points counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '$TeamAPoints',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            TeamAPoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            TeamAPoints += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            TeamAPoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '$TeamBPoints',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            TeamBPoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            TeamBPoints += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            TeamBPoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, minimumSize: Size(150, 50)),
                onPressed: () {
                  setState(() {
                    TeamAPoints = 0;
                    TeamBPoints = 0;
                  });
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
