import 'package:flutter/material.dart';
import 'age_card.dart';
import 'gender_selection.dart';
import 'weight_slider.dart';
import 'ruler_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slider_button/slider_button.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: ThemeData.light(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.3, 1],
                colors: [Color(0xffF68F8C), Color(0xFFF8AEAC)])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Bmi Calculator',
                style: TextStyle(
                  fontSize: 50,
                  color: Color(0xff822659),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      CircularButton(
                        onPress: () {
                          setState(() {});
                        },
                        icon: Icon(
                          FontAwesomeIcons.mars,
                          size: 50,
                          color: Color(0xff93329e),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Column(
                    children: [
                      CircularButton(
                        onPress: () {},
                        icon: Icon(
                          FontAwesomeIcons.venus,
                          size: 50,
                          color: Color(0xff93329e),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Female',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      // Image Container
                      Container(
                        height: 200.0,
                        width: 180.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white.withOpacity(0.3),
                        ),
                        child: Center(child: WeightSlider()),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        height: 180.0,
                        width: 180.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white.withOpacity(0.3),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(fontSize: 30),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            AgeCard(),
                          ],
                        ),
                      ),
                      // height: 100, width: 250, child: AgeCard()
                    ],
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white.withOpacity(0.3),
                      ),
                      child: RulerSlider()),
                ],
              ),
              Container(
                width: double.infinity,
                height: 70,
                child: Center(
                    child: SliderButton(
                  action: () {
                    ///Do something here
                  },
                  label: Text(
                    "Slide to Calculate",
                    style: TextStyle(
                        color: Color(0xff4a4a4a),
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  icon: Icon(FontAwesomeIcons.arrowRight),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
