import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../res/widgets/custom_text.dart';
import '../../../res/widgets/custom_textField.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff11161F),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                appBar(),
                contentTopSpace(),
                CustomTextField(),
                contentBottomSpace(),
                categorySection(),
                trendingMovieSection(),
                continueWatchingSection(),
                recommendedSection(),
              ],
            ),
          ),
        ),
      ),

    );
  }

  Widget appBar(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Hello Rafsan",
                  fontSize: 20,
                  color: Colors.white70,
                ),
                SizedBox(height: 6,),
                CustomText(
                  text: "Lets watch today",
                  color: Colors.white54,
                  fontSize: 14,
                ),
              ],
            )
          ],
        ),
        Row(
          children: [
            Image.asset(
              "assets/images/image_person.png",
              height: 50,
              width: 50,

            )
          ],
        )
      ],
    );
  }

  Widget contentTopSpace(){
    return SizedBox(height: 18,);
  }

  Widget contentBottomSpace(){
    return SizedBox(height: 32,);
  }

  Widget categorySection(){
    return Column(
      children: [
        titleText(
          title: "Cateegories",
        ),
        contentTopSpace(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                    color: Color(0xff221821),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: CustomText(
                    text: "Action",
                    color: Colors.white60,

                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                    color: Color(0xff221821),
                    borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 1.5)
                ),
                child: Center(
                  child: CustomText(
                    text: "Anime",
                    color: Colors.white60,

                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                    color: Color(0xff221821),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: CustomText(
                    text: "Sci-fi",
                    color: Colors.white60,

                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                /*decoration: BoxDecoration(
                    color: Color(0xff221821),
                    borderRadius: BorderRadius.circular(10)
                ),*/
                child: Center(
                  child: CustomText(
                    text: "Thriller",
                    color: Colors.white60,

                  ),
                ),
              ),
            ],
          ),
        ),
        contentTopSpace(),
        Image.asset(
            "assets/images/image_banner.png"
        ),
        contentBottomSpace(),
      ],
    );
  }

  Widget trendingMovieSection(){
    return Column(
      children: [
        titleText(
          title: "Trending Movies",
        ),
        contentTopSpace(),
        Container(
          height: 140,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          "assets/images/image_1.png",
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Yes I Do",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),

                    ),
                  ],
                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          "assets/images/image_2.png",
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Inside Out 2",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),

                    ),
                  ],
                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          "assets/images/image_3.png",
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Babylon",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        contentBottomSpace(),
      ],
    );
  }

  Widget continueWatchingSection(){
    return Column(
      children: [
        titleText(
          title: "Continue Watching",
        ),
        contentTopSpace(),
        Container(
          height: 140,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 16),
                        child: Image.asset(
                          "assets/images/image_4.png",
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Wednesday | Season - 1 | Episode - 3",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),

                    ),
                  ],
                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          "assets/images/image_5.png",
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Emily in Paris | Season - 1 | Episode - 1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        contentBottomSpace(),
      ],
    );
  }

  Widget recommendedSection(){
    return Column(
      children: [
        titleText(
          title: "Recommended For You",
        ),
        contentTopSpace(),
        Container(
          height: 150,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          "assets/images/image_6.png",
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Double Love",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),

                    ),
                  ],

                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          "assets/images/image_7.png",
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Sunita",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),

                    ),
                  ],

                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          "assets/images/image_8.png",
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Pokemon: detective Pikachu",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),

                          ),
                        ),
                      ],
                    ),
                  ],

                ),
              ),
            ],
          ),
        ),
        contentBottomSpace(),
      ],
    );
  }

  Widget titleText({title}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomText(
              text: title,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),

          ],
        ),
        Row(
          children: [
            CustomText(
              text: "See More",
              fontSize: 14,
            ),

          ],
        ),

      ],
    );
  }

  /*Container(
                  height: 140,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.imageList_1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 16),
                              child: Image.asset(
                                controller.imageList_1[index]
                              ),
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            controller.textList_1[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),

                          ),
                        ],
                      );
                    },

                  ),
                ),*/

  /*Container(
                  height: 140,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.imageList_2.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 16),
                              child: Image.asset(
                                  controller.imageList_2[index]
                              ),
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            controller.textList_2[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),

                          ),
                        ],
                      );
                    },

                  ),
                ),*/

}






