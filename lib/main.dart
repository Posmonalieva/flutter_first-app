import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Тапшырма 01',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color(
              (0xffb243656),
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.only(
                      left: 75, top: 15, right: 75, bottom: 15),
                ),
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xff46F3F3),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'сан: $_counter',
                style: const TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    _decrementCounter();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff005EA6),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                GestureDetector(
                  onTap: () {
                    _incrementCounter();
                  },
                  child: Container(
                    color: const Color(0xff005EA6),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}

// + - кнопканын коду
// Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     GestureDetector(
            //       onTap: _incrementCounter,
            //       children: [
            //         Container(
            //           padding: const EdgeInsets.symmetric(
            //               horizontal: 33, vertical: 1),
            //           margin: const EdgeInsets.all(10),
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: const Color(
            //               (0xffb005EA6),
            //             ),
            //             border: Border.all(),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: Colors.blue.withOpacity(0.1),
            //                 spreadRadius: 5,
            //                 blurRadius: 7,
            //                 offset: const Offset(0, 3),
            //               ),
            //             ],
            //           ),
            //           child: const Text(
            //             "-",
            //             style: TextStyle(
            //               color: Colors.white,
            //               fontWeight: FontWeight.w600,
            //               fontSize: 48,
            //             ),
            //           ),
            //         ),
            //         Container(
            //           padding: const EdgeInsets.symmetric(
            //               horizontal: 27, vertical: 1),
            //           margin: const EdgeInsets.only(top: 6),
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: const Color(
            //               (0xffb005EA6),
            //             ),
            //             border: Border.all(),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: Colors.blue.withOpacity(0.1),
            //                 spreadRadius: 5,
            //                 blurRadius: 7,
            //                 offset: const Offset(0, 3),
            //               ),
            //             ],
            //           ),
            //           child: const Text(
            //             "+",
            //             style: TextStyle(
            //                 color: Colors.white,
            //                 fontWeight: FontWeight.w400,
            //                 fontSize: 48),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
