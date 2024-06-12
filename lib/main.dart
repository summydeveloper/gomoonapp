import 'package:flutter/material.dart';
import 'package:gomoonapp/pages/home_page.dart';
import 'package:gomoonapp/widget/custom_dropdown_button.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
     );
     
  }
}
 

// Widget _destinationDropDownWidget(){
 
 
//  return customDropdownButtonClass(Width: , values: const [
//   'Blah Blah',
//     'aminah'
//  ]);
// }