import 'package:flutter/material.dart';
import 'package:ui_1/components/logo.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> sliderData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/intro_images/intro.png"
    },
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/intro_images/intro_1.png"
    },
    {
      "text": "We help people conect with store ",
      "image": "assets/intro_images/intro_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/intro_images/intro_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
                    child: Logo(
                      mAxes: MainAxisAlignment.start,
                    ),
                  ),
                  // FlatButton(
                  //     padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 8.0),
                  //     onPressed: () {},
                  //     child: Text(
                  //       'SKIP',
                  //       style: TextStyle(
                  //         fontSize: 20,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ))
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: sliderData.length,
                itemBuilder: (context, index) => Slider(
                  img: sliderData[index]["image"],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        sliderData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Text(
                      'Meet',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Libraryon',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      introText,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 20,
                    width: 240,
                    alignment: Alignment.center,
                    child: Text(
                      'Borrow and read free ebooks',
                      style: TextStyle(
                        color: kAccentColor,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Container(
                    width: 90,
                    height: 20,
                    padding: EdgeInsets.fromLTRB(14.0, 12.0, 0.0, 12.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        icon: Icon(
                          Icons.navigate_next,
                          color: kPrimaryLightColor,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class Slider extends StatelessWidget {
  const Slider({
    Key key,
    this.img,
  }) : super(key: key);
  final String img;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      img,
    );
  }
}
