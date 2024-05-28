import 'package:flutter/material.dart';
import 'package:oiopay/color_scheme.dart';

class TransactionHistory extends StatefulWidget {
   const TransactionHistory({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TransactionHistoryState createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
        final mycolor = Mycolor();
     List<Widget> historyBars = [];
for (int i = 0; i < 20; i++) {
  historyBars.add(historybar());
}
             

   return Scaffold(

    //  Background Color

      backgroundColor:mycolor.backgroundColor,
      
      //  App Bar
      appBar: AppBar(
        
        backgroundColor: mycolor.appBar,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title:  const Text('Transaction History',
        textScaler: TextScaler.noScaling,
        style: TextStyle(
          fontSize: 20,
        ),
        ),
        centerTitle: true,
      ),


        // body
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

                  const SizedBox(height: 10,),

              Padding(
          
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
          child: Card(
            elevation: 25,
            child: Container(
              
                width: double.infinity, // Set width
                height: 180, // Set height
                decoration: BoxDecoration(
            
                     border: Border.all(color:mycolor.appBar, width: 1),
            
                  color: mycolor.backgroundColor, // Set background color
                  borderRadius: BorderRadius.circular(10),
                  
                   // Set border radius for rounded corners
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                       Spacer(),
                        Text('Choose Date',
                    textScaler: TextScaler.noScaling,
                    style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
                    ),
                    ),
            
                    Spacer(),
            
                    
                      ],
                    ),
                    
                 SizedBox(height: 25,),
            
                 Row(
                      children: [
                        SizedBox(width: 90,),
                        Text('From',
                         textScaler: TextScaler.noScaling,
                         style: TextStyle(
                          fontWeight: FontWeight.w700,
                           fontSize: 24,
                         ),
                         ),
                 
                         Spacer(),
                 
                         
                       Text('To',
                         textScaler: TextScaler.noScaling,
                         style: TextStyle(
                          fontWeight: FontWeight.w700,
                           fontSize: 24,
                         ),
                         ),
                 
                 
                  SizedBox(width: 90,),
                 
                      ],
                    ),
            
                  Row(
                      children: [
                        SizedBox(width: 90,),
                        Text('Amount',
                    textScaler: TextScaler.noScaling,
                    style: TextStyle(
            fontSize: 15,
                    ),
                    ),
            
                    Spacer(),
            
                    
                        Text('hjjj',
                    textScaler: TextScaler.noScaling,
                    style: TextStyle(
            fontSize: 12,
                    ),
                    ),
            
             SizedBox(width: 90,),
            
                      ],
                    ),
                  ],
            
            
                ),
              ),
          ),
        ),

         const Padding(
           padding:  EdgeInsets.fromLTRB(8.0,15,8,4),
           child:  Text('Latest Transactions',
                      textScaler: TextScaler.noScaling,
                      style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
                      ),
                      ),
         ),
           ...historyBars,
            ],
          ),
        ),
      ),

   );
  }




      //  TRANSACTION HISTORY BARS WIDGET

      Widget historybar(){

        final mycolor = Mycolor();


        return Padding(
          
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
          child: Card(
            elevation: 10,
            child: Container(
              
                width: double.infinity, // Set width
                height: 100, // Set height
                decoration: BoxDecoration(
            
                     border: Border.all(color:mycolor.appBar, width: 1),
            
                  color: mycolor.backgroundColor, // Set background color
                  borderRadius: BorderRadius.circular(10),
                  
                   // Set border radius for rounded corners
                ),
                child: const Column(
                  children: [
                    
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        SizedBox(width: 15,),
                        Text('Transaction Type',
                    textScaler: TextScaler.noScaling,
                    style: TextStyle(
            fontSize: 17,
                    ),
                    ),
            
                    Spacer(),
            
                    
                        Text('27 MAR 2024',
                    textScaler: TextScaler.noScaling,
                    style: TextStyle(
            fontSize: 13,
                    ),
                    ),
            
             SizedBox(width: 15,),
            
                      ],
                    ),
                    
                 SizedBox(height: 5,),
            
                 Row(
                      children: [
                        SizedBox(width: 15,),
                        Text('Dominos',
                         textScaler: TextScaler.noScaling,
                         style: TextStyle(
                          fontWeight: FontWeight.w900,
                           fontSize: 24,
                         ),
                         ),
                 
                         Spacer(),
                 
                         Text('Rs. 50,000.00',
                         textScaler: TextScaler.noScaling,
                         style: TextStyle(
                          fontWeight: FontWeight.w900,
                           fontSize: 24,
                         ),
                         ),

                 
                  SizedBox(width: 15,),
                 
                      ],
                    ),
            
                  Row(
                      children: [
                        SizedBox(width: 15,),
                       Text('Saturday',
                    textScaler: TextScaler.noScaling,
                    style: TextStyle(
            fontSize: 13,
                    ),
                    ),
                    Spacer(),
            
                       Text('Amount',
                    textScaler: TextScaler.noScaling,
                    style: TextStyle(
            fontSize: 13,
                    ),
                    ),
                        
            
             SizedBox(width: 15,),
            
                      ],
                    ),
                  ],
            
            
                ),
              ),
          ),
        );
      }
  
}