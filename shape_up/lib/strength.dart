import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;

class Strength extends StatefulWidget {
  const Strength({Key? key}) : super(key: key);

  @override
  _StrengthState createState() => _StrengthState();
}

class _StrengthState extends State<Strength> {
  List strength = [];
  _initData() async {
    await DefaultAssetBundle.of(context).loadString("json/strength.json").then((value){
      setState(() {
        strength = json.decode(value);
      });
    });
  }
  @override
  void initState(){
    super.initState();
    _initData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    color.AppColor.gradientSecond,
                    color.AppColor.gradientFirst.withOpacity(0.9)
                  ]
              )
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap:(){
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back, size: 20,
                              color: color.AppColor.secondPageIconColor),
                        ),
                        Expanded(child: Container()),
                        Icon(Icons.info_outline, size: 20,
                            color: color.AppColor.secondPageIconColor),
                      ],
                    ),
                    const SizedBox(height: 70),
                    Text(
                      'Strength',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: color.AppColor.secondPageTitleColor,
                      ),
                    ),
                    const SizedBox(height: 70,),
                    Row(
                      children: [
                        Container(
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  colors: [
                                    color.AppColor.gradientFirst,
                                    color.AppColor.gradientSecond
                                  ]
                              )
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.timer,
                                size: 20,
                                color: color.AppColor.secondPageIconColor,),
                              const SizedBox(width: 5,),
                              Text(
                                '50 mins',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: color.AppColor.secondPageIconColor
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  colors: [
                                    color.AppColor.gradientFirst,
                                    color.AppColor.gradientSecond
                                  ]
                              )
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.handyman_outlined,
                                size: 20,
                                color: color.AppColor.secondPageIconColor,),
                              const SizedBox(width: 5,),
                              Text(
                                'Dumbbells',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: color.AppColor.secondPageIconColor
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(80)
                    )
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Row(
                      children:[
                        const SizedBox(width: 30,),
                        Icon(Icons.loop,
                          size: 20,
                          color: color.AppColor.homePageSubtitle,),
                        const SizedBox(width: 5,),
                        Text(
                          'Repeat the set 3 times',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color:color.AppColor.circuitsColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Expanded(child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        itemCount: strength.length,
                        itemBuilder: (_, int index){
                          return SizedBox(
                              height: 130,
                              width: 200,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  strength[index]["img"]
                                              ),
                                            )
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            strength[index]["title"],
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          const SizedBox(height: 10,),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 3),
                                            child: Text(
                                              strength[index]["rep"],
                                              style: TextStyle(
                                                color: color.AppColor.homePageSubtitle,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        height:20,
                                        decoration: BoxDecoration(
                                          color: color.AppColor.gradientFirst.withOpacity(0.4),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "15s rest",
                                            style: TextStyle(
                                                color: color.AppColor.homePageExerciseTypes
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          for(int i=0; i<85; i++)
                                            i.isEven? Container(
                                              width: 3,
                                              height: 1,
                                              decoration: BoxDecoration(
                                                  color: color.AppColor.gradientSecond,
                                                  borderRadius: BorderRadius.circular(2)
                                              ),
                                            ):Container(
                                              width: 3,
                                              height: 1,
                                              color: color.AppColor.homePageBackground,
                                            )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                        }
                        )
                    )
                  ],
                ),
              ))
            ],
          ),
        )
    );
  }
}
