// import 'package:flutter/material.dart';
// import 'package:flutter_basic/screens/FirstScreen.dart';

// class _FirstScreenState extends State<FirstScreen> {
//   String? language;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Screen'),
//       ),
//       body: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           ListTile(
//             leading: Radio<String>(
//               value: 'Dart',
//               groupValue: language,
//               onChanged: (String? value) {
//                 setState(() {
//                   language = value;
//                   showSnackbar();
//                 });
//               },
//             ),
//             title: Text('Dart'),
//           ),
//           ListTile(
//             leading: Radio<String>(
//               value: 'Kotlin',
//               groupValue: language,
//               onChanged: (String? value) {
//                 setState(() {
//                   language = value;
//                   showSnackbar();
//                 });
//               },
//             ),
//             title: Text('Kotlin'),
//           ),
//           ListTile(
//             leading: Radio<String>(
//               value: 'Swift',
//               groupValue: language,
//               onChanged: (String? value) {
//                 setState(() {
//                   language = value;
//                   showSnackbar();
//                 });
//               },
//             ),
//             title: Text('Swift'),
//           ),
//         ],
//       ),
//     );
//   }

//   void showSnackbar() {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text('$language selected'),
//         duration: Duration(seconds: 1),
//       ),
//     );
//   }
// }
