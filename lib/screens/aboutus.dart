import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
           title: Text("About Us"),
           centerTitle: true,
       ),
       body:Container(
        child: Column(children: [
          Center(
            child: Container(
              height: 110,
              width: 180,
              child: Image.asset(
                      "images/TeamovaHeaderStrip.png",
                      // color: primaryColor,
                      // height: 32,
                      // fit: BoxFit.cover,
                    ),
            ),
          ),
          Text("Created By",style:TextStyle(fontWeight:FontWeight.bold,fontSize: 20)),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              child: Column(
                children:[
                Row(
                  children:[
                     CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage("images/himanshu.jpg")
                                ),
                                SizedBox(width: 10,),
                                Text("HIMANSHU SAHA",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ]
                ),
                SizedBox(height: 2,),
                Padding(
                  padding: const EdgeInsets.only(left: 45,right:5),
                  child: Container(
                    child: Text("Hey Folks, I am Himanshu Saha and I develop backend and Logic of the App",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),)),
                )
                ]
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              child: Column(
                children:[
                Row(
                  children:[
                     CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage("images/yash.jpg")
                                ),
                                SizedBox(width: 10,),
                                Text("YASH SHARMA",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ]
                ),
                SizedBox(height: 2,),
                Padding(
                  padding: const EdgeInsets.only(left: 45,right:5),
                  child: Container(
                    child: Text("Hey Folks, I am Yash Sharma and I develop Frontend of the App",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),)),
                )
                ]
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              child: Column(
                children:[
                Row(
                  children:[
                     CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage("images/pulkit.jpg")
                                ),
                                SizedBox(width: 10,),
                                Text("PULKIT SAINI",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ]
                ),
                SizedBox(height: 2,),
                Padding(
                  padding: const EdgeInsets.only(left: 45,right:5),
                  child: Container(
                    child: Text("Hey Folks, I am Pulkit Saini and I develop Frontend of the App",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),)),
                )
                ]
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              child: Column(
                children:[
                Row(
                  children:[
                     CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage("images/sarthak.jpg")
                                ),
                                SizedBox(width: 10,),
                                Text("SARTHAK UPADHYAY",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ]
                ),
                SizedBox(height: 2,),
                Padding(
                  padding: const EdgeInsets.only(left: 45,right:5),
                  child: Container(
                    child: Text("Hey Folks, I am Sarthak Upadhyay and I develop backend of the App",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),)),
                )
                ]
              ),
            ),
          ),
        ]),
       )
    );
  }
}