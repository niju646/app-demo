import 'package:flutter/material.dart';

class Detailspage extends StatelessWidget {
 final String img;
 final String title;
  final String price;
 final BuildContext context;
 const Detailspage({super.key, required this.img, required this.title, required this.price,required this.context});

  @override
  Widget build(BuildContext context) {
    String title2 = title;
    title2 = "hello";
    return Scaffold(
    
      body:Stack(
        children: [
           IconButton(
            padding: EdgeInsets.only(left: 20,top: 40),
            onPressed: (){
              Navigator.of(context).pop();
            },
           icon:Icon(Icons.close,color: Colors.white,),
           ),

          Image.asset("assets/d$img.jpg",height: MediaQuery.of(context).size.height/1.5,
          width: MediaQuery.of(context).size.width,fit: BoxFit.cover,
          ),
         
           Align(
            alignment: Alignment.bottomCenter,
             child: Container(
               height: MediaQuery.of(context).size.height/2.3,
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                color:Colors.white ,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
                )
               ),
               child: Column(
                children: [
                  Expanded(
                    child: Column(
                    children: [],
                    )
                  ),
                  Container(height: 40,
                  width: MediaQuery.of(context).size.width,child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(height: 50,width: 50,child: Icon(Icons.favorite_border),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),shape: BoxShape.circle
                      ),
                      ),
                      TextButton.icon(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.pink[200],
                          shape: StadiumBorder(),
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/5,vertical: 10),
                        ),
                        onPressed: (){}, 
                      label: Text("Add to Cart",style: TextStyle(color: Colors.white,fontSize: 20,
                      letterSpacing: 1
                      ),),
                      icon:Icon(Icons.shopping_bag_outlined,color: Colors.white,) ,)
                    ],
                  )
                  ,)
                ],
               ),
               
             ),
           )
        ],
      ) ,
    );
  }
}