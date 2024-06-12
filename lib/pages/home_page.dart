import 'package:flutter/material.dart';
import 'package:gomoonapp/widget/custom_dropdown_button.dart';
class HomePage extends StatelessWidget{
  late double _deviceHeight, _deviceWidth;
  @override Widget build(BuildContext context){
    _deviceWidth =MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 46, 45, 45),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _pageTitle(),
          _bookaRideWidget()              ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: _astroImage()),
            ],
          ),
        ),
      ),
    ) ;
  }
  Widget _pageTitle(){
    return Text('#GoMoon', style: TextStyle(
      color: Colors.white,
      fontSize: 60,
      fontWeight: FontWeight.bold
    ),);
  }

  Widget _astroImage(){
    return Image.asset('assets/images/astro.png', width: _deviceWidth ,);
  }
  Widget _bookaRideWidget(){
    return Container(
      height: _deviceHeight*0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          _destinationDropDownWidget(),
          _travellerInfoDownWidget(),
          _rideButton()
        ],
      ),
    );
  }
  Widget _destinationDropDownWidget(){
    return customDropdownButtonClass(width: _deviceWidth, values: [
              'Akoka, Yaba Lagos',
              'Tel Aviv riyadh saudhi',
              'Gwarinpa Abuja Nigeria'
            ]);
  }
  Widget _travellerInfoDownWidget(){

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customDropdownButtonClass(width: _deviceWidth * 0.40, values: [
              '1',
              '2',
              '3'
            ]),
            SizedBox(width: 10),
            customDropdownButtonClass(width: _deviceWidth *0.50, values: [
              'Economy',
              'Business',
              'First'
            ]),
          ],
        ),
        
      ],
    );
  }
  Widget _rideButton(){
    return Container(
      padding: EdgeInsets.only(bottom: _deviceHeight*0.05),
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(5.0)
      ),
      width: _deviceWidth,
      child: MaterialButton( onPressed: (){},
          color: Colors.white,
          textColor: Colors.black,
          child: Text('Book Now'),
          ),
    );
  }
}