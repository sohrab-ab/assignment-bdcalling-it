import 'package:assignment_pro/app/res/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/all_content_controller.dart';

class AllContentView extends GetView<AllContentController> {
  const AllContentView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff11161F),
      appBar: AppBar(
        backgroundColor: Color(0xff11161F),
        title: const Text('Content'),
        centerTitle: true,
        elevation: 0,
      ),
      
      body: Obx((){
        return controller.userDataResponse.value == null ?
        Center(child: CircularProgressIndicator()):
            Padding(
              padding: EdgeInsets.all(16),
              child: ListView.builder(
                itemCount: controller.userDataResponse.value!.userList!.length,
                itemBuilder: (context, index){
                  var data = controller.userDataResponse.value!.userList![index];
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "Name:   ${data.name}",
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              CustomText(
                                text: "Email:   ${data.email}",
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              CustomText(
                                text: "Address:   ${data.address!.street}",
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );

      })

    );
  }
}
