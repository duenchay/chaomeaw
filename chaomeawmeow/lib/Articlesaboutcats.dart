import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:flutter/material.dart';


class AboutCats extends StatefulWidget {
  AboutCats({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AboutCatsState createState() => new _AboutCatsState();
}

class _AboutCatsState extends State<AboutCats> {
  //Create a list of PageModel to be set on the onBoarding Screens.
  final pageList = [
    PageModel(
        color: const Color(0xFF678FB4),
         title: Text('เรื่องน่ารู้เกี่ยวกับแมว',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 19.0,
            )),
        heroAssetPath: 'assets/images/cat_1.jpg', 
        body: Text('แมวมีสมองที่ใกล้เคียงกับคุณมากกว่าสุนัข สมองของคนและแมวมีส่วนของสมองที่แสดงออกถึงอารมณ์เหมือนกัน',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            )),
        iconAssetPath: 'assets/images/caticon.png'),
    PageModel(
        color: const Color(0xFF65B0B4),
        heroAssetPath: 'assets/images/cat_2.jpg',
        title: Text('',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 19.0,
            )),
        body: Text(
            'แมวใช้เวลากว่า 30% ในช่วงที่เขาตื่นเลียขนทำความสะอาดตัวเอง',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            )),
        iconAssetPath: 'assets/images/caticon.png'),
    PageModel(
      color: const Color(0xFF9B90BC),
      heroAssetPath: 'assets/images/cat_3.jpg',
      title: Text('',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 19.0,
          )),
      body: Text('โดยเฉลี่ยแล้วแมวใช้เวลา 2 ใน 3 ของชีวิตไปกับการนอน นั่นหมายถึงแมวที่มีอายุ 12 ปี เขาตื่นเพียง 4 ปีเท่านั้น',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          )),
      iconAssetPath: 'assets/images/caticon.png',
    ),
    // SVG Pages Example
  
     PageModel(
      color: const Color(0xFFB489AC),
      heroAssetPath: 'assets/images/cat_4.png',
      title: Text('',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 19.0,
          )),
      body: Text('แมวที่มีขนขาวบริสุทธิ์และตาสีฟ้า มักจะหูหนวก',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          )),
      iconAssetPath: 'assets/images/caticon.png',
    ),
     PageModel(
      color: const Color(0xFFBE869D),
      heroAssetPath: 'assets/images/cat_7.jpeg',
      title: Text('',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 19.0,
          )),
      body: Text('เสียงครางในลำคอของแมวไม่ได้หมายความว่าแมวมีความสุขเสมอ บางครั้งทำเสียงครางเบาๆก็เพื่อปลอบใจตัวเองเมื่อรู้สึกเจ็บหรือหวาดกลัว',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          )),
      iconAssetPath: 'assets/images/caticon.png',
    ),
     PageModel(
      color: const Color(0xFFB88E70),
      heroAssetPath: 'assets/images/cat_5.jpg',
      title: Text('',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 19.0,
          )),
      body: Text('โดยปกติแมวจะไม่ร้องเสียงเหมืยวใส่แมวตัวอื่น จะร้องเสียงนี้ใส่คนเท่านั้น แต่จะทำเสียงครวญคราและเสียงขู่ใส่แมวตัวอื่น',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          )),
      iconAssetPath: 'assets/images/caticon.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(  
      //   appBar: AppBar(
      //   title: Text("About Cats"),
      //   backgroundColor: Colors.blueAccent,
      // ),

        body: FancyOnBoarding(
          doneButtonText: "Done",
          skipButtonText: "",
          pageList: pageList,
          onDoneButtonPressed: () =>
              Navigator.of(context).pushReplacementNamed('/mainPage'),
          // onSkipButtonPressed: () =>
          //     Navigator.of(context).pushReplacementNamed('/mainPage'),
        ),
      ),
    );
  }
}