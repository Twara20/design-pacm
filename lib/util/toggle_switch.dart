
import 'package:design_pacm/screens/screens.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CustomSwitchTab extends StatelessWidget {

  final Color? labelcolor;
  final Color? unselectedLabelColor;
  final Color? boxDecorationColor;
  final String? text1;
  final String? text2;
  final TabController? tabController;
  final int? initialIndex;
  final bool ? isChangeLang;

  const CustomSwitchTab({
    Key? key,
    this.labelcolor,
    this.unselectedLabelColor,
    this.boxDecorationColor,
    this.text1,
    this.text2, this.tabController,
    this.initialIndex = 0,
    this.isChangeLang = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // length of tabs
      initialIndex: initialIndex!,
      child: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        child: Container(
          height: 45,
          width: 350,
          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 3),
          decoration: BoxDecoration(
              color:  Color(0xfff2e2ee),  //
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: Expanded(
            child: TabBarView(
              children: [



                TabBar(

                  onTap: (index){


                    if(index==0){
                      Get.offAndToNamed(SignInScreen.pageId);
                    }
                    else{
                      Get.offAndToNamed(SignInGuest.pageId);
                    }

                  },
                  controller: tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                    color: labelcolor,
                  ),
                  labelColor: boxDecorationColor,
                  unselectedLabelColor: unselectedLabelColor,

                  tabs: [
                    Tab(

                      child: Text(text1.toString(),
                        style: TextStyle(fontFamily: "regular",color: Colors.black.withOpacity(0.7), fontWeight: FontWeight.w600,),),
                    ),
                    Tab(
                      child: Text(text2.toString(),
                        style: TextStyle(fontFamily: "regular",color:Colors.purple.withOpacity(0.8),fontWeight: FontWeight.w600),),
                    ),














]
      ),
            TabBarView(
                children: [
                  Text("ddd"),
                  Text("ggh"),

                ]






        ),
      ]
    ),
    )
    )
      )
    );
  }
}
