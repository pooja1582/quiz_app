import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> image=[
    "https://cdn.dribbble.com/users/8120900/screenshots/16005387/rajasthan_tourism_-_brand_design-01.jpg",
  "https://infodea.in/wp-content/uploads/2021/06/Planet-Gujarat-Logo.jpg",
  "https://static.vecteezy.com/system/resources/thumbnails/020/963/846/small/khanda-icon-design-free-vector.jpg",
  "https://www.postergully.com/cdn/shop/products/ad60b613516a74f64e0376157be3a9c5.jpg?v=1578650355",
  "https://mir-s3-cdn-cf.behance.net/projects/404/417e3979584697.Y3JvcCw4MDgsNjMyLDAsMA.png",
  ];

  Widget customcard(String statename ,String image) {
    return
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
           child: Material(
             color: Colors.blue.shade200,
             elevation: 10.0,
             borderRadius: BorderRadius.circular(50),
             child: Container(decoration: BoxDecoration(),
               child: Column(
                 children: <Widget>[
                   Padding(
                       padding: EdgeInsets.symmetric(vertical: 10.0),
                   child: Material(
                     elevation: 5.0,
                     borderRadius: BorderRadius.circular(100.0),
                     child: Container(
                       height: 200.0,
                       width: 200.0,
                       child: ClipOval(
                         child: Image.network(image)
                         ),
                       )
                     ),
                   ),

                   Center(
                     child: Text(statename,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,fontFamily: "Quwando",color: Colors.white),
                     ),
                   )
                   
                 ],
               ),
             ),
           ),
                ),
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title:
        Text("Quizstar",style: TextStyle(color: Colors.white),),

      ),
      body: ListView(
        children: <Widget>[
          InkWell(onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (_)=>QuizScreen()));
          },
              child: customcard("Rajsthan",image[0],)),
          customcard("Gujarat",image[1],),
          customcard("Punjab",image[2],),
          customcard("Delhi",image[3]),
          customcard("Maharashtra",image[4]),
        ],
      ),
    );
  }
}
