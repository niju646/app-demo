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
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ILLUM'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("$title",style: TextStyle(
                              fontWeight: FontWeight.bold,fontSize: 28),),
                            Text("\$$price",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                            
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("SIZE"),
                                const SizedBox(height: 5,),
                                Text("16 0Z"),
                              ],
                            ),
                            ),
                            Expanded(child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("QTY"),
                                const SizedBox(height: 5,),
                                Text("1")
                              ],
                            ))
                            
                          ],
                        ),
                        SizedBox(height: 20,),
                        Divider(thickness: 1.5,),
                        ListTile(
                          leading: Text("Details",style: TextStyle(fontSize: 18,
                          ),),
                          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.black,)),
                        ),
                        Divider(thickness:1.5 ,),
                        ListTile(
                          leading: Text("Shipping & Return",style: TextStyle(fontSize: 18),),
                          trailing: Icon(Icons.add,color: Colors.black,),
                        )

                        

                      ],
                      ),
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
                          
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/6,vertical:5),
                        ),
                        onPressed: (){}, 
                      label: Text("Add to Cart",style: TextStyle(color: Colors.white,fontSize: 20,
                      letterSpacing: 1
                      ),),
                      icon:Icon(Icons.shopping_bag_outlined,color: Colors.white,) ,)
                    ],
                  )
                  ,),
                  SizedBox(height: 5,)
                ],
               ),
               
             ),
           )
        ],
      ) ,
    );
  }
}