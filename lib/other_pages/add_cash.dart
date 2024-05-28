import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oiopay/color_scheme.dart';
import 'package:oiopay/other_pages/transaction_history.dart';


class AddCash extends StatefulWidget {
  const AddCash({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddCashState createState() => _AddCashState();
}

class _AddCashState extends State<AddCash> {
  final mycolor = Mycolor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
  elevation: 0,
backgroundColor:const  Color.fromRGBO(90, 200, 250, 1),
       title: const Text(
          "Add OIO Balance",
          textScaler: TextScaler.noScaling,
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
    fontSize: 25,
    fontWeight: FontWeight.bold,
          ),
        ),
        
        centerTitle: true,
       leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 28, // Your custom icon here
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();              },
            );
          },
        ),
      ),

        body: NestedScrollView(
           headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      SliverAppBar(
          automaticallyImplyLeading: false,

        expandedHeight: 180,
        backgroundColor: mycolor.appBar,
        flexibleSpace: FlexibleSpaceBar(
          background: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(50.0),
            ),
            child:Padding(
              padding: const EdgeInsets.fromLTRB(14, 20, 14, 20),
              child: Material(
                borderRadius: BorderRadius.circular(30),
                elevation: 5,
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      //  first logo and reward row

                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                        child: Row(
                          children: [
                            Text(
                              "OIO PAY",
                              textScaler: TextScaler.noScaling,
                              style: TextStyle(
                                color: mycolor.textblack,
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.wallet_giftcard,
                              color: Color.fromRGBO(255, 208, 0, 0.918),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "My Rewards",
                              
                              style: TextStyle(
                                color: mycolor.textblack,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),

                      // Balnce Area

                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 5, 25, 0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "OIO Balance",
                                  textScaler: TextScaler.noScaling,
                                  style: TextStyle(
                                    color: mycolor.textblack,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$ 40,000.62",
                                  textScaler: TextScaler.noScaling,
                                  style: TextStyle(
                                    color: mycolor.textblack,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                 Text(
                                  "Available",
                                  textScaler: TextScaler.noScaling,
                                  style: TextStyle(
                                    color: mycolor.textblack,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
const SizedBox(width: 5,),
                            // Add Cash button 
                        const Spacer(),
                              GestureDetector(
                                 onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TransactionHistory()),
                  );
              },
                                child: SizedBox(
                                height: 50,
                                width: 160,
                                child: Card(
                                  elevation: 2,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30))),
                                  color:mycolor.secondry,
                                  child:Center(
                                    child: Text(
                                          "View Transaction History",
                                          textScaler: TextScaler.noScaling,
                                          style: TextStyle(
                                            color: mycolor.backgroundColor,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                  ),
                                ),
                                                            ),
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        // Add the title widget here
        
      ),
    ];
  },

  // Body Start From Here 

           body:  Padding(
             padding: const EdgeInsets.fromLTRB(10,0,10,0),
             child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Add Cash Options",
                    style: TextStyle(
                      fontSize: 20,
                    fontWeight: FontWeight.w500,
                    ),),
                  ),
                  const SizedBox(height: 8,),
                 Card(
                  elevation: 10,
                  color: mycolor.backgroundColor,
                  shadowColor: mycolor.appBar,
                  child: Container(
                   decoration: BoxDecoration(
              color: mycolor.backgroundColor,
              borderRadius: BorderRadius.circular(15), // Adjust the value to change the roundness
            ),
                    child: Column(
                      children: [
                      returntransfertype("Bank Cards", Icons.credit_card_outlined),
                      returntransfertype("PayPal", Icons.paypal_outlined),
                      returntransfertypeOIO("OIO PAY", const AssetImage('assets/Logos/OIO_LOGO.png'),),
                      returntransfertype("Apple Pay", Icons.apple_rounded),
                      returntransfertype("Google Pay", Icons.wallet_outlined),
                      returntransfertype("Bank Accounts", Icons.account_balance_outlined),
                      
                      
                      ],
                    ),
                  ),
                 ),
                 const SizedBox(height: 30,),
                ],
              ),
             ),
           )),
    );
  }


Widget returntransfertype(String tName, IconData icono){

   return Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: GestureDetector(
                
                child: SizedBox(
                  height: 110,
                  width: double.infinity,
                  child: Card(
                    
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    color: mycolor.backgroundColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Icon(
                          icono,
                          color: mycolor.appBar,
                          size: 40,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          tName,
                          textScaler: TextScaler.noScaling,
                          style: TextStyle(
                            color: mycolor.textblack,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                         Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 25,
                          applyTextScaling: false,
                          color: mycolor.appBar,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );

}




// for the Image one 


Widget returntransfertypeOIO(String tName, AssetImage img){

   return Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: GestureDetector(
                
                child: SizedBox(
                  height: 110,
                  width: double.infinity,
                  child: Card(
                    
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    color: mycolor.backgroundColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        ImageIcon(
                          
          img, // Replace 'your_image.png' with your image file path
          size: 50, // Set your desired size
          color: mycolor.appBar,
           // Set your desired color
        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          tName,
                          textScaler: TextScaler.noScaling,
                          style: TextStyle(
                            color: mycolor.textblack,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                         Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 25,
                          applyTextScaling: false,
                          color: mycolor.appBar,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );

}


}


