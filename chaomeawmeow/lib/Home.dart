import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slimy_card/slimy_card.dart';
void main() {
  //Don't worry about these codes here, as they are not relevant for this example.
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarDividerColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(Home());
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chao Meaw Meow',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.tealAccent[100],
        fontFamily: 'Poppins',
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
            // This streamBuilder reads the real-time status of SlimyCard.
            initialData: false,
            stream: slimyCard.stream, //Stream of SlimyCard
            builder: ((BuildContext context, AsyncSnapshot snapshot) {
              return ListView(padding: EdgeInsets.zero, children: <Widget>[
                SizedBox(height: 70),
                
                SlimyCard(
                  slimeEnabled: false,
                  color: const Color(0xFF65B0B4),
                  
                  topCardWidget: topCardWidget((snapshot.data)
                      ? '😸 แมว'
                      : '😺 Cat'),
                  
                  bottomCardWidget: bottomCardWidget(),
                )
              ]);
            })));
  }
  // This widget will be passed as Top Card's Widget.
  Widget topCardWidget(String data) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              child: Text(data,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 28,
                      fontWeight: FontWeight.bold))),
          SizedBox(height: 20),
          Text(
            '(ชื่อวิทยาศาสตร์: Felis catus)',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          
          SizedBox(height: 10),
          Text(
            ' เป็นสัตว์เลี้ยงลูกด้วยนม อยู่ในตระกูล Felidae ต้นตระกูลมาจากเสือไซบีเรีย (Felis tigris altaica) ',
            style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
        ]);
  }
  // This widget will be passed as Bottom Card's Widget.
  Widget bottomCardWidget() {
    return Text(
      'มีช่วงลำตัวตั้งแต่จมูกถึงปลายหางยาวประมาณ 4 เมตร แมวที่เลี้ยงตามบ้าน มีรูปร่างขนาดเล็ก ขนาดลำตัวยาว ช่วงขาสั้นและจัดอยู่ในประเภทสัตว์กินเนื้อ มีเขี้ยวและเล็บแหลมคม สืบสายเลือดมาจากแมวป่าที่มีขนาดใหญ่กว่า ซึ่งลักษณะบางอย่างของแมวยังคงพบเห็นได้ในแมวบ้านปัจจุบัน',
      style: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}