// import 'package:flutter/material.dart';
// import 'package:them_luy_thua_27_1_2024/my_object.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: CounterPage(),
//     );
//   }
// }

// class CounterPage extends StatefulWidget {
//   const CounterPage({super.key});
//   @override
//   State<StatefulWidget> createState() {
//     return _CounterPageState();
//   }
// }

// class _CounterPageState extends State<CounterPage> {
//   final MyObject myObject = MyObject(0);
//   @override
//   Widget build(BuildContext context) {
//     // debugPrint('Call Build funciton')
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: Text('Counter page'),
//       ),
//       body: Center(
//         child: Column(
//           // 1 wedget con
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // nhiều wedget con
//             Text('Giá trị hiện tại: ${myObject.value}'),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 OutlinedButton.icon(
//                     onPressed: () {
//                       myObject.decrease();
//                       setState(() {});
//                     },
//                     icon: const Icon(Icons.remove),
//                     label: const Text('Giảm')),
//                 const SizedBox(width: 5),
//                 OutlinedButton.icon(
//                     onPressed: () {
//                       myObject.increase();
//                       setState(() {});
//                     },
//                     icon: const Icon(Icons.add),
//                     label: const Text('Tăng'))
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:them_luy_thua_27_1_2024/my_object.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  final MyObject myObject = MyObject(0);
  int n = 0;

  @override
  Widget build(BuildContext context) {
    // debugPrint('Call Build funciton')
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Counter page'),
      ),
      body: Center(
        child: Column(
          // 1 wedget con
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // nhiều wedget con
            Text('Giá trị hiện tại: ${myObject.value}'),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Nhập số nguyên n: '),
                onChanged: (value) {
                  n = int.parse(value);
                },
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                    onPressed: () {
                      myObject.decrease();
                      setState(() {});
                    },
                    icon: const Icon(Icons.remove),
                    label: const Text('Giảm')),
                const SizedBox(width: 5),
                OutlinedButton.icon(
                    onPressed: () {
                      myObject.increase();
                      setState(() {});
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Tăng')),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: () {
                    myObject.square();
                    setState(() {});
                  },
                  icon: const Icon(Icons.exposure),
                  label: const Text('Lũy thừa bậc 2'),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    myObject.power(n);
                    setState(() {});
                  },
                  icon: const Icon(Icons.exposure),
                  label: const Text('Lũy thừa bậc n'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
