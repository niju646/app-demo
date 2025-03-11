import 'package:flutter/material.dart';
import 'package:sample_flutter_demo/DetailsPage.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

      Widget space = const SizedBox(width: 15,);
      Widget spaceh = const SizedBox(height: 15,);
      

    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
       
        child: Container(
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(blurRadius: 20,color: Colors.grey,spreadRadius: 1)
          ]
        ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainerBottomNav(Icons.person),
              buildContainerBottomNav(Icons.shopping_bag),
              buildContainerBottomNav(Icons.home,isSelected: true),
              buildContainerBottomNav(Icons.favorite),
              buildContainerBottomNav(Icons.settings),
          
            
          
            ],
            
          ),
        ),
      ) ,
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              margin: EdgeInsets.all(10),
              child: Icon(Icons.search)),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              space,
              Text('Shop',style: TextStyle(fontSize: 32,letterSpacing: 1),),
              space,
              Text('Shopyy',style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 32,letterSpacing: 1
              ),)
            ],
          ),
          spaceh,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildFlatButton("home Decore",isSelected: true),
              buildFlatButton("Bath & Body"),
              buildFlatButton("Beauty",),
               
            ],
          ),
          spaceh,
          Expanded(
            child: Container(
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight: Radius.circular(40) ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 15
                  ),
                ]
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  
                  children: [
                    const SizedBox(height: 18,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        columnMethod("candles",isSelected: true),
                        columnMethod("Vases",isSelected: false),
                        columnMethod("bins",isSelected: false),
                        columnMethod("Floral",isSelected: false),
                        columnMethod("Decor",isSelected: false),
      
                      ],
                    ),
                    spaceh,
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(width: 20,),

                          buildColumnwithrow("1","summer decoration","29",context),
                          buildColumnwithrow("2","winter decoration","30",context),
                          buildColumnwithrow("3","autum decoration","20",context),
                          buildColumnwithrow("4","spring decoration","32",context),
                          buildColumnwithrow("5","rainy decoration","35",context),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                  lineBar(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text("Holiday Special",style: TextStyle(fontSize: 15,),),
                        Spacer(),
                        Text("View All",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BuildBottomContainer("winter ","1","30","20"),
                         BuildBottomContainer("summer","2","20","10"),
                          BuildBottomContainer("Autmun","3","25","15"),
                           BuildBottomContainer("Spring","4","40","25"),
                    
                      ],
                    ),
                  ),
                
                    
                   
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildContainerBottomNav(IconData icon,{isSelected=false}) {
    return Container(
            decoration: BoxDecoration(
              color:isSelected? Colors.pink[100]:Colors.white,
              shape: BoxShape.circle,
              boxShadow: isSelected? [
                BoxShadow(color: Colors.grey,blurRadius: 10,spreadRadius: 1)
              ]:[],
            ),
            height: 50,
            width: 50,
            child: Icon(icon,color: isSelected? Colors.white:Colors.black,),
          );
  }

  Container BuildBottomContainer(String text,String img,String price,String pieces) {
    return Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 95,
                    width: 180,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(height: 100,width: 90,
                            child: Image.asset("assets/d$img.jpg",fit: BoxFit.cover,))),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(text),
                              Text("$pieces-p",style: TextStyle(color: Colors.grey),),
                              Spacer(),
                              Text("\$ $price",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        )
                      ],
                    ),
                  );
  }

  GestureDetector  buildColumnwithrow(String img,String title,String price,  BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                return Detailspage(title: title,img: img,context:context,price: price,);
                              }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
                          children: [
                            Container(
                              height: 190,
                              width: 130,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset("assets/d$img.jpg",fit: BoxFit.cover,),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(title,style: TextStyle(fontSize: 16),),
                              Text("\$ $price",style: TextStyle(fontSize: 20 ),),
                          ],
                        ),
      ),
    );
  }

  Column columnMethod(String text,{bool isSelected=false} ) {
    return Column(
                      children: [
                        Text(text,
                        style:TextStyle(
                          color: isSelected? Colors.black:Colors.grey,
                        ) ,),
                        
                        if(isSelected)
                        Container(
                          height: 5,width: 4,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                          ),
                        )
                      ],
                    );
  }

  TextButton buildFlatButton(String text,{bool isSelected=false}) {
    return TextButton(
              onPressed: (){},
              style: TextButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: isSelected? Colors.pink[200]:Colors.grey[300]
              ),
             child: Text(text,
             style: TextStyle(
              color:isSelected? Colors.white:Colors.black,fontSize: 18) ,
             ),
             );
  }
}

class lineBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey[300],
         borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
         bottomLeft: Radius.circular(10),
         )
       
      ),
      margin: EdgeInsets.only(left: 40),
      alignment: Alignment.centerLeft,
      child: Container(
        height: 5,
        width: 100,
       decoration: BoxDecoration(
         color: Colors.black,
         borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),
         )
       ),
      ),
    );
  }
}

