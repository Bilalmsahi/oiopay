import 'package:flutter/material.dart';

import '../../color_scheme.dart';

class ShopManagement extends StatefulWidget {
  const ShopManagement({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ShopManagementState createState() => _ShopManagementState();
}

class _ShopManagementState extends State<ShopManagement> {
  final mycolor = Mycolor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mycolor.backgroundColor,

      //  App Bar
      appBar: AppBar(
        backgroundColor: mycolor.appBar,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new,
          size: 17,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.storefront),
            Text(
              'My Shops',
              textScaler: TextScaler.noScaling,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        leadingWidth: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

               // Add new shop



                Padding(
     padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
     child: SizedBox(
      
      height: 60,
      width: double.infinity,
      child: Card(
        
        elevation: 5,
        shape:const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
       color: mycolor.secondry, 
        child:  Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 20,),
     
     
            Icon(Icons.add,
            color: mycolor.backgroundColor,
            
            size: 30,),
     
     
             const SizedBox(width: 15,),
     
              Text("Add New Shop",
               textScaler: TextScaler.noScaling,
              style: TextStyle(color: mycolor.backgroundColor,
              fontSize: 16,
              fontWeight: FontWeight.w300,
              ),
              
              ),
     
            const Spacer(),
              const Icon(Icons.arrow_forward_ios_sharp,
              size: 15,
               applyTextScaling: false,
              color: Colors.white,),
              const SizedBox(width: 20,),
     
             
            
          ],
        ),
      ),
     ),
   ),


          // SHOPS

            shopmenu(),
            shopmenu(),
            shopmenu(),
            shopmenu(),

           

            
     
          
          ],
        ),
      ),
    );
  }










  //  Shop menu widget

  Widget shopmenu() {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(8,10,8,10),
      child: Column(
        children: [
          Card(
            elevation: 10,
            child: Container(
                decoration: BoxDecoration(
                  color: mycolor.backgroundColor,
                  border: Border.all(
                    color:mycolor.appBar, // Set the border color here
                    width: 1, // Set the border width here
                  ),
                   borderRadius: BorderRadius.circular(10),
                ),
              child: Column(
                children: [
                  const SizedBox(height: 10,),
            
            const  Padding(
               padding:  EdgeInsets.fromLTRB(12,0,12,0),
                  
              //  SHOP NAME ROW
               child: Row(
                children: [
                  Icon(Icons.store_outlined,
                  size: 30,),
                  Text("Shop Name",
                  textScaler: TextScaler.noScaling,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),)
               
                ],
               ),
                  
                  
              
                  
             ),
                  
                  
            //  TOOL ROW 
                  
                  
             Padding(
                  padding: const EdgeInsets.fromLTRB(8, 15, 8, 0),
                  child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                   Center(
                   child: SizedBox(
                   
                                 
                               height: 100,
                               width: 100,
                               child:Container(
                                
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(20), // Half of the container's width or height to create a circular border
                                 border: Border.all(
                                   color: mycolor.secondry, // Border color changed to red
                                   width: 0.3, // Border width
                                 ),
                                 
                               ),
                   
                               child:  Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                   
                                   Icon(Icons.settings,
                                    color: mycolor.appBar,
                                   size: 45,),
                                 
                                 const Text("Main Settings",
                                  textScaler: TextScaler.noScaling,
                               textAlign: TextAlign.center,
                   
                                 style: TextStyle(
                                   fontSize: 12,
                                 ),
                                 ),
                   
                                 ],
                               ),
                               ),
                   
                                   
                               ),
                   ),
                  
                  
                   
                  const SizedBox(width:10,),
                  
                   Center(
                   child: SizedBox(
                   
            
                    height: 100,
                    width: 100,
                    child:Container(
                     
                    decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), // Half of the container's width or height to create a circular border
            border: Border.all(
              color: mycolor.secondry, // Border color changed to red
              width: 0.3, // Border width
            ),
            
                    ),
                  
                    child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                  
              Icon(Icons.man,
               color: mycolor.appBar,
              size: 40,),
            
            const Text("Salesman\nManagement",
             textScaler: TextScaler.noScaling,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
            ),
            ),
                  
            ],
                    ),
                    ),
                   
              
                    ),
                   ),
                  
                  const SizedBox(width: 10,),
                  
                  
                  Center(
                   child: SizedBox(
                   
            
                    height: 100,
                    width: 100,
                    child:Container(
                     
                    decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), // Half of the container's width or height to create a circular border
            border: Border.all(
              color: mycolor.secondry, // Border color changed to red
              width: 0.3, // Border width
            ),
            
                    ),
                  
                    child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
                     
             children: [
                  
              Icon(Icons.attach_money,
               color: mycolor.appBar,
              size: 40,),
            
            const Text("Sell",
             textScaler: TextScaler.noScaling,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
            ),
            ),
                  
            ],
                    ),
                    ),
                   
              
                    ),
                   ),
                  
                  
                  
                  ],
                  
                  ),
                    ),
                  
                  
                    //  TOOL ROW 
                  
                  
              
             Padding(
                  padding: const EdgeInsets.fromLTRB(8, 15, 8, 0),
                  child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                   Center(
                   child: SizedBox(
                   
                                 
                               height: 100,
                               width: 100,
                               child:Container(
                                
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(20), // Half of the container's width or height to create a circular border
                                 border: Border.all(
                                   color: mycolor.secondry, // Border color changed to red
                                   width: 0.3, // Border width
                                 ),
                                 
                               ),
                   
                               child:  Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                   
                                   Icon(Icons.abc_outlined, 
                                   color: mycolor.appBar,
                                   size: 45,),
                                 
                                 const Text("Balance & Sales",
                                  textScaler: TextScaler.noScaling,
                               textAlign: TextAlign.center,
                   
                                 style: TextStyle(
                                   fontSize: 12,
                                 ),
                                 ),
                   
                                 ],
                               ),
                               ),
                   
                                   
                               ),
                   ),
                  
                  
                   
                  const SizedBox(width:10,),
                  
                   Center(
                   child: SizedBox(
                   
            
                    height: 100,
                    width: 100,
                    child:Container(
                     
                    decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), // Half of the container's width or height to create a circular border
            border: Border.all(
              color: mycolor.secondry, // Border color changed to red
              width: 0.3, // Border width
            ),
            
                    ),
                  
                    child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                  
              Icon(Icons.account_balance_outlined,
               color: mycolor.appBar,
              size: 40,),
            
            const Text("Payment\nSettings",
             textScaler: TextScaler.noScaling,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
            ),
            ),
                  
            ],
                    ),
                    ),
                   
              
                    ),
                   ),
                  
                  const SizedBox(width: 10,),
                  
                  
                  Center(
                   child: SizedBox(
                   
            
                    height: 100,
                    width: 100,
                    child:Container(
                     
                    decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), // Half of the container's width or height to create a circular border
            border: Border.all(
              color: mycolor.secondry, // Border color changed to red
              width: 0.3, // Border width
            ),
            
                    ),
                  
                    child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
                     
            children: [
                  
              Icon(Icons.history,
               color: mycolor.appBar,
              size: 40,),
            
            const Text("Sales\nHistory",
             textScaler: TextScaler.noScaling,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
            ),
            ),
                  
            ],
                    ),
                    ),
                   
              
                    ),
                   ),
                  
                  
                  
                  ],
                  
                  ),
                    ),
                  
                    const SizedBox(height: 20,),
                ],
              ),
            ),
          )
      
        ],
      ),
    );
  }
}
