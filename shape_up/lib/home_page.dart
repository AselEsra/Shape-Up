import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shape_up/aerobic.dart';
import 'package:shape_up/strength.dart';
import 'balance.dart';
import 'colors.dart' as color;
import 'flexibility.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Shape UP",
                style: TextStyle(
                  fontSize: 30,
                  color: color.AppColor.homePageTitle,
                  fontWeight: FontWeight.w700
                ),),
                Expanded(child: Container()),
                Icon(Icons.keyboard_arrow_left_outlined,
                size: 25,
                color: color.AppColor.homePageIcons,),
                const SizedBox(width: 10,),
                Icon(Icons.calendar_today_rounded,
                size: 25,
                color: color.AppColor.homePageIcons),
                const SizedBox(width: 15,),
                Icon(Icons.keyboard_arrow_right_outlined,
                size: 25,
                color: color.AppColor.homePageIcons)
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Text(
                  "Shape UP",
                  style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.homePageSubtitle,
                      fontWeight: FontWeight.w700
                  ),),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.homePageDetail,
                  ),),
                const SizedBox(width: 5,),
                Icon(Icons.arrow_forward,
                size: 20,
                color: color.AppColor.homePageIcons,)
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    color.AppColor.gradientFirst.withOpacity(0.8),
                    color.AppColor.gradientSecond.withOpacity(0.7),
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.elliptical(90,70),
                  bottomRight: Radius.elliptical(90,70),
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                boxShadow:
                const [BoxShadow(
                  offset: Offset(5,5),
                  blurRadius: 10,
                  color: Colors.blueGrey,
                )
                ]
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 45, right: 25, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Click to continue from where you have left",
                    style: TextStyle(
                      fontSize: 30,
                      color: color.AppColor.homePageContainerTextSmall,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.timer, size: 20, color: color.AppColor.homePageContainerTextSmall,),
                          const SizedBox(width: 5,),
                          Text("30 mins", style: TextStyle(fontSize: 15, color: color.AppColor.homePageContainerTextSmall),),
                        ],
                      ),
                      Expanded(child: Container(),),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 10,
                              offset: Offset(4,2)
                            )
                          ]
                        ),
                        child: const Icon(Icons.play_circle_fill, color: Colors.white, size: 50 ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ),
            SizedBox(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 30),
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/blueBg1.jpg"
                        ),
                        fit: BoxFit.fill
                      ),
                      boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        offset: Offset(0,10),
                        color: Colors.black54,
                      ),
                        BoxShadow(
                          blurRadius: 30,
                          offset: Offset(-1,-1),
                          color: Colors.blueGrey,
                        )
                      ]
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left:210,top: 10, bottom: 30 ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage(
                              "assets/waterBottle.png"
                          ),
                      ),
                  )
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    margin: const EdgeInsets.only(right: 80, top: 75, left: 40),
                    child: Column(
                      children: [
                        Text(
                          "Drink more water!",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: color.AppColor.homePageDetail
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Exercise Types",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: color.AppColor.homePageSubtitle
                  ),
                ),
              ],
            ),
            Expanded(child: OverflowBox(
        maxWidth: MediaQuery.of(context).size.width,
        child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  height:170,
                                  width:(MediaQuery.of(context).size.width-90)/2,
                                  margin: const EdgeInsets.only(left: 30, bottom: 15, top: 15),
                                  padding: const EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      image: const DecorationImage(
                                          image:AssetImage(
                                              'assets/aerobic.png'
                                          )
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 3,
                                            offset: const Offset(3,3),
                                            color: color.AppColor.gradientSecond.withOpacity(0.2)
                                        ),
                                        BoxShadow(
                                            blurRadius: 3,
                                            offset: const Offset(-3,-3),
                                            color: color.AppColor.gradientSecond.withOpacity(0.2)
                                        )
                                      ]
                                  ),
                                  child: Center(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: InkWell(
                                        onTap: ()
                                        {
                                          Get.to(()=>const Aerobic());
                                        },
                                        child: Text(
                                          'Aerobic',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: color.AppColor.homePageExerciseTypes
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                              ),
                              Container(
                                  height:170,
                                  width:(MediaQuery.of(context).size.width-90)/2,
                                  margin: const EdgeInsets.only(left: 30, bottom: 15, top: 15),
                                  padding: const EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      image: const DecorationImage(
                                          image:AssetImage(
                                              'assets/strength.png'
                                          )
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 3,
                                            offset: const Offset(3,3),
                                            color: color.AppColor.gradientSecond.withOpacity(0.2)
                                        ),
                                        BoxShadow(
                                            blurRadius: 3,
                                            offset: const Offset(-3,-3),
                                            color: color.AppColor.gradientSecond.withOpacity(0.2)
                                        )
                                      ]
                                  ),
                                  child: Center(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child:InkWell(
                                        onTap: ()
                                        {
                                          Get.to(()=>const Strength());
                                        },
                                        child: Text(
                                          'Strength',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: color.AppColor.homePageExerciseTypes
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  height:170,
                                  width:(MediaQuery.of(context).size.width-90)/2,
                                  margin: const EdgeInsets.only(left: 30, bottom: 15, top: 15),
                                  padding: const EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      image: const DecorationImage(
                                          image:AssetImage(
                                              'assets/balance.png'
                                          )
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 3,
                                            offset: const Offset(3,3),
                                            color: color.AppColor.gradientSecond.withOpacity(0.2)
                                        ),
                                        BoxShadow(
                                            blurRadius: 3,
                                            offset: const Offset(-3,-3),
                                            color: color.AppColor.gradientSecond.withOpacity(0.2)
                                        )
                                      ]
                                  ),
                                  child: Center(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: InkWell(
                                        onTap: ()
                                        {
                                          Get.to(()=>const Balance());
                                        },
                                        child: Text(
                                          'Balance',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: color.AppColor.homePageExerciseTypes
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                              ),
                              Container(
                                  height:170,
                                  width:(MediaQuery.of(context).size.width-90)/2,
                                  margin: const EdgeInsets.only(left: 30, bottom: 15, top: 15),
                                  padding: const EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      image: const DecorationImage(
                                          image:AssetImage(
                                              'assets/flex.png'
                                          )
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 3,
                                            offset: const Offset(3,3),
                                            color: color.AppColor.gradientSecond.withOpacity(0.2)
                                        ),
                                        BoxShadow(
                                            blurRadius: 3,
                                            offset: const Offset(-3,-3),
                                            color: color.AppColor.gradientSecond.withOpacity(0.2)
                                        )
                                      ]
                                  ),
                                  child: Center(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: InkWell(
                                        onTap:(){
                                          Get.to(()=>const Flexibility());
                                        },
                                        child: Text(
                                          'Flexibility',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: color.AppColor.homePageExerciseTypes
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]
                );
              }
          ),
        ),
      )),
          ],
        ),
      ),
    );
  }
}
