import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

      Widget space = const SizedBox(width: 15,);
      Widget spaceh = const SizedBox(height: 20,);
      

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        toolbarHeight: 70,
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
              Text('Anthropology',style: TextStyle(
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
              child: Column(
                
                children: [
                  const SizedBox(height: 40,),
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
                        buildColumnwithrow("1","summer decoration","29"),
                        buildColumnwithrow("2","winter decoration","30"),
                        buildColumnwithrow("3","autum decoration","20"),
                        buildColumnwithrow("4","spring decoration","32"),
                        buildColumnwithrow("5","rainy decoration","35"),
                      ],
                    ),
                  ),
                  lineBar(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        children: [
                          Text("Holiday Special",style: TextStyle(
                            fontSize: 20,
                          ),),
                          Spacer(),
                          Text("view All",style: TextStyle(
                            fontSize: 20,color: Colors.grey,
                          ),),
                        ],
                      ),
                    ),
                    
                  ),
                  // Expanded(
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         height: 100,
                  //         color: Colors.amber,
                  //         width: 200,
                  //       )
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding buildColumnwithrow(String img,String title,String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
                        children: [
                          Container(
                            height: 220,
                            width: 160,
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
                          height: 5,width: 5,
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
      height: 5,width: MediaQuery.of(context).size.width,
      
      margin: EdgeInsets.only(left: 40),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
              color: Colors.blueGrey[300],
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
      ),
      child: Container(
        height: 5,width: 100,
        
        decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                )
      ),
        
      ),
    );
  }
}
