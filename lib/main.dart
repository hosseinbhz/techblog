import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/TravelModel.dart';
import 'package:expandable_text/expandable_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _SelectedIndex = 0;
  double ImageSize = 68;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: imageItem(size),
      ),
    );
  }

  Widget imageItem(Size size) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 249, 249, 249),
        
            width: double.infinity,
            height: size.height / 1.9,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: size.height / 2.2,
                  decoration: BoxDecoration(
                    
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(85),
                          bottomRight: Radius.circular(85)),
                      image: DecorationImage(
                        
                        
                          image: AssetImage(teravelList[_SelectedIndex].img),
                          
                          fit: BoxFit.cover),
                          ),
                ),
                //  Head Icon
                Positioned(
                  right: 0,
                  left: 0,
                  top: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 45,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(151, 251, 251, 251)),
                          child: const Icon(CupertinoIcons.chevron_left),
                        ),
                        Container(
                            width: 50,
                            height: 45,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(151, 251, 251, 251)),
                            child: const Icon(CupertinoIcons.heart)),
                      ],
                    ),
                  ),
                ),
      
                Positioned(
                  right: 0,
                  top: 100,
                  child: SizedBox(
                    width: 120,
                    height: double.maxFinite,
                    child: ListView.builder(
                      itemCount: teravelList.length,
                      itemBuilder: (context, index) {
                        return Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  _SelectedIndex = index;
                                });
                              },
                              child: AnimatedContainer(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Color.fromARGB(159, 255, 255, 255), width: 4),
                                    borderRadius: BorderRadius.circular(23),
                                    image: DecorationImage(
                                        image: AssetImage(teravelList[index].img),
                                        fit: BoxFit.fill)),
                                width: _SelectedIndex == index
                                    ? ImageSize + 24
                                    : ImageSize,
                                height: _SelectedIndex == index
                                    ? ImageSize + 24
                                    : ImageSize,
                                duration: const Duration(milliseconds: 300),
                              ),
                            ),
                          ),
                        ]);
                      },
                    ),
                  ),
                )
      ,
                Positioned(
                  bottom: 80,
                  left: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        
                      
                        child: Text(teravelList[_SelectedIndex].name,
                        style: const TextStyle(fontFamily: "sf",fontSize: 20,
                        
                        
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,shadows: <Shadow>[BoxShadow(blurRadius: TextSelectionToolbar.kToolbarContentDistanceBelow,color: Colors.black)]),),
                      
                      ),
                      
                      Row(children: [
                        Icon(CupertinoIcons.placemark,shadows: [BoxShadow(blurRadius: TextSelectionToolbar.kToolbarContentDistanceBelow,color: Colors.black)],
                       
                        color: Color.fromARGB(255, 255, 255, 255),),
                        Text(teravelList[_SelectedIndex].location,
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                        shadows: <Shadow>[BoxShadow(blurRadius: TextSelectionToolbar.kToolbarContentDistanceBelow,color: Colors.black,)],
                        fontSize: 17,),)
                      ],)
                    
                    ],),
                  ),
                )              
      
      
      
      
      
              ],
            ),
          ),
          Container(
              
              width: double.infinity,
              child:
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    
                    Card(
                      
                      shape: RoundedRectangleBorder
                      (borderRadius: BorderRadius.circular(25),
                      side: BorderSide(color: Color.fromARGB(90, 255, 255, 255),
                      width:2 )),
                      
                      child: Container(
                        width: 90,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Text("Distance"),
                          Text(teravelList[_SelectedIndex].distance,style: TextStyle(color: const Color.fromARGB(255, 120, 202, 210),fontSize: 18),)
                        ],),
                      ),
                      
                      ),
                    Card(
                      
                      shape: RoundedRectangleBorder
                      (borderRadius: BorderRadius.circular(25),
                      side: BorderSide(color: Color.fromARGB(90, 255, 255, 255),
                      width:2 )),
                      
                      child: Container(
                        width: 90,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Text("Temp"),
                          Text(teravelList[_SelectedIndex].temp,style: TextStyle(color: const Color.fromARGB(255, 120, 202, 210),fontSize: 18),)
                        ],),
                      ),
                      
                      ),       
                    Card(
                      
                      shape: RoundedRectangleBorder
                      (borderRadius: BorderRadius.circular(25),
                      side: BorderSide(color: Color.fromARGB(90, 255, 255, 255),
                      width:2 )),
                      
                      child: Container(
                        width: 90,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Text("Distance"),
                          Text(teravelList[_SelectedIndex].rating,style: TextStyle(color: const Color.fromARGB(255, 120, 202, 210),fontSize: 18),)
                
                          
                        ],
                        
                        ),
                      ),
                      
                      ),
                  
                  ],
                
                
                  ),
                )
                ,                
              Padding(
                padding: const EdgeInsets.fromLTRB(37,5,35,23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Description",style: TextStyle(fontSize: 19),),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,10,0,20),
                    child: ExpandableText(
                      teravelList[_SelectedIndex].description,
                    expandText: "Read More",
                    collapseText: "show less",
                    linkColor: Colors.blue,
                    
                    
                    ),
                    
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                     
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,60,30,0),
                          child: Text("Total Price",style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 150, 147, 147)),),
                        ),
                        Text(teravelList[_SelectedIndex].totalprice,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 40,color: Color.fromARGB(213, 0, 0, 0)),)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15,70,0,0),
                      child: Container(
                           
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1,color: Color.fromARGB(160, 158, 158, 158))),
                                shape: BoxShape.circle,
                                color: Color.fromARGB(207, 0, 0, 0)),
                            child: const Icon(CupertinoIcons.chevron_right,color: Color.fromARGB(255, 255, 255, 255),size: 40,),
                          ),
                    ),
                  ],)
                  
                  
                  
                ],),
              )
              
              ],),
              
              
              
              
              ),
         
        
              
        ],
      ),
    );
  }
}
