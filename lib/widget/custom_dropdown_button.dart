import 'package:flutter/material.dart';
class customDropdownButtonClass extends StatelessWidget {
  List<String> values;
  double width;
   customDropdownButtonClass({super.key, required this.width, required this.values});

  @override
  Widget build(BuildContext context) {
        List<DropdownMenuItem<String>> dropdownItems = values.map((String value) {
  return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
  );
}).toList();

    return Container(
    padding: EdgeInsets.symmetric(horizontal: width*0.05),
    width: width,
    decoration: BoxDecoration(
      color: const Color.fromRGBO(53, 53, 53, 1.0)
    ),
    child:

    
     DropdownButton(
   
      value: values.first,
      items: dropdownItems,
      onChanged:(_) {} ,
         underline: Container(),
         style: TextStyle(color: Colors.white),
         dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
    ),
  );
  }
}