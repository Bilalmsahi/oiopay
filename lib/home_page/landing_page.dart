import 'package:flutter/material.dart';
import 'package:oiopay/business_areena/shop/shop_management_page.dart';
import 'package:oiopay/color_scheme.dart';
import 'package:oiopay/other_pages/add_cash.dart';
import 'package:oiopay/other_pages/my_payment_methods_page.dart';
import '../other_pages/transaction_history.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final mycolor = Mycolor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mycolor.backgroundColor,
      body: NestedScrollView(
  headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      SliverAppBar(
        
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

                            // Add Cash button 
                        const Spacer(),
                              GestureDetector(
                                 onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddCash()),
                );
              },
                                child: SizedBox(
                                height: 50,
                                width: 120,
                                child: Card(
                                  elevation: 2,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30))),
                                  color:const Color.fromARGB(255, 11, 185, 248),
                                  child:Center(
                                    child: Text(
                                          "Add Cash",
                                          textScaler: TextScaler.noScaling,
                                          style: TextStyle(
                                            color: mycolor.backgroundColor,
                                            fontSize: 18,
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


      body: SingleChildScrollView(
        child: Column(
          children: [


            // Main TOOLS

           const SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        sendMoneyDialog(context);
                      },
                      child: SizedBox(
                        height: 120,
                      width: 110,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                20), // Half of the container's width or height to create a circular border
                            border: Border.all(
                              color: mycolor
                                  .secondry, // Border color changed to red
                              width: 0.3, // Border width
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ImageIcon(
                               const AssetImage("assets/Logos/send_money.png"),
                                color: mycolor.appBar,
                                size: 70,
                              ),
                              const Text(
                                "Send\nMoney",
                                textScaler: TextScaler.noScaling,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: SizedBox(
                     height: 120,
                      width: 110,
                      child: GestureDetector(
                        onTap: () {
                          receiveMoneyDialog(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                20), // Half of the container's width or height to create a circular border
                            border: Border.all(
                              color:
                                  mycolor.secondry, // Border color changed to red
                              width: 0.3, // Border width
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ImageIcon(
                                const AssetImage("assets/Logos/receive_money.png"),
                                color: mycolor.appBar,
                                size: 65,
                              ),
                              const Text(
                                "Receive\nMoney",
                                textScaler: TextScaler.noScaling,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: SizedBox(
                      height: 120,
                      width: 110,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              20), // Half of the container's width or height to create a circular border
                          border: Border.all(
                            color:
                                mycolor.secondry, // Border color changed to red
                            width: 0.3, // Border width
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.fingerprint_rounded,
                              color: mycolor.appBar,
                              size: 55,
                            ),
                            const Text(
                              "Biometric\nAuthentication",
                              textScaler: TextScaler.noScaling,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
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

          const SizedBox(height: 17,),


            const SizedBox(
              height: 10,
            ),
            // My Account Info Card
            

// MY CARD HEADING

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Paymentmethod()),
                );
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: SizedBox(
                      height: 25,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "My Payment Methods",
                          style: TextStyle(
                            color: mycolor.fullblack,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ],
              ),
            ),

            // MY  CARD PORTION/ OR MY PAYMENT METHOD PORTION

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Paymentmethod()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 18),
                child: SizedBox(
                  width: 375,
                  height: 220,
                  child: Card(
                    shadowColor: mycolor.activecolor,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    elevation: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromRGBO(83, 197, 250, 1),
                            mycolor.gradient
                          ], // Example gradient colors
                          stops: const [
                            0.1,
                            0.8
                          ], // Stops at 20% and 80% of the gradient
                          begin: Alignment.topCenter,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),

                        // 1st top ROW
                        Row(children: [
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            "My Cards",
                            style: TextStyle(
                              color: mycolor.backgroundColor,
                              fontSize: 18,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "OIO PAY",
                            style: TextStyle(
                              color: mycolor.backgroundColor,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                        ]),

                        const SizedBox(
                          height: 18,
                        ),

                        // 2nd Row

                        Row(
                          children: [
                            const SizedBox(
                              width: 40,
                            ),
                            Container(
                              color: const Color.fromRGBO(255, 237, 103, 1),
                              child: const Placeholder(
                                fallbackHeight: 25,
                                fallbackWidth: 40,
                                color: Color.fromRGBO(236, 222, 120, 1),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Icon(
                              Icons.face_retouching_natural_outlined,
                              size: 35,
                              color: Color.fromRGBO(236, 222, 120, 1),
                            )
                          ],
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        const Row(),

                        // 3rd row

                        Row(
                          children: [
                            const SizedBox(
                              width: 30,
                            ),
                            Text(
                              "1234  4568  1234  5689",
                              style: TextStyle(
                                fontSize: 23,
                                color: mycolor.backgroundColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 5,
                        ),

                        const Row(
                          children: [
                            SizedBox(
                              width: 26,
                            ),
                            Text(
                              "USER NAME",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  "VALID THRU",
                                  textScaler: TextScaler.noScaling,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "00/00",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ),

//  TOP HEADING FOR TEXT MANAGE YOUR FINANCES

            Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
              child: SizedBox(
                height: 30,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Manage your finances",
                    textScaler: TextScaler.noScaling,
                    style: TextStyle(
                      color: mycolor.textblack,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),

            // HISTORY VIEW BOX

            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TransactionHistory()),
                  );
                },
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: Card(
                    elevation: 5,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    color: mycolor.secondry,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.history,
                          color: mycolor.backgroundColor,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "View Transaction History",
                          textScaler: TextScaler.noScaling,
                          style: TextStyle(
                            color: mycolor.backgroundColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 15,
                          applyTextScaling: false,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 12,
            ),

// TOOLS  HEADING

            Divider(
              color: mycolor.secondry, // Customize the color as needed
              thickness: 1.0, // Customize the thickness as needed
              height: 20, // Customize the height as needed
              indent: 20, // Customize the left indent as needed
              endIndent: 20, // Customize the right indent as needed
            ),

            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                const Icon(
                  Icons.dashboard_customize_outlined,
                  size: 25,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                  child: SizedBox(
                    height: 30,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Dashboard",
                        textScaler: TextScaler.noScaling,
                        style: TextStyle(
                          color: mycolor.fullblack,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 15,
            ),

//  TOOLS/DASHBOARD

            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Paymentmethod()),
                        );
                      },
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                20), // Half of the container's width or height to create a circular border
                            border: Border.all(
                              color: mycolor
                                  .secondry, // Border color changed to red
                              width: 0.3, // Border width
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.credit_card_rounded,
                                color: mycolor.appBar,
                                size: 45,
                              ),
                              const Text(
                                "MY CARDS",
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
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              20), // Half of the container's width or height to create a circular border
                          border: Border.all(
                            color:
                                mycolor.secondry, // Border color changed to red
                            width: 0.3, // Border width
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.mobile_off_outlined,
                              color: mycolor.appBar,
                              size: 40,
                            ),
                            const Text(
                              "Device-Free\n Payment",
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
                  const SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              20), // Half of the container's width or height to create a circular border
                          border: Border.all(
                            color:
                                mycolor.secondry, // Border color changed to red
                            width: 0.3, // Border width
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.fingerprint_rounded,
                              color: mycolor.appBar,
                              size: 40,
                            ),
                            const Text(
                              "Biometric\nAuthentication",
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
                ],
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TransactionHistory()),
                        );
                      },
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                20), // Half of the container's width or height to create a circular border
                            border: Border.all(
                              color: mycolor
                                  .secondry, // Border color changed to red
                              width: 0.3, // Border width
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.history,
                                color: mycolor.appBar,
                                size: 40,
                              ),
                              const Text(
                                "Transaction \n History",
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
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              20), // Half of the container's width or height to create a circular border
                          border: Border.all(
                            color:
                                mycolor.secondry, // Border color changed to red
                            width: 0.3, // Border width
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.account_circle,
                              color: mycolor.appBar,
                              size: 40,
                            ),
                            const Text(
                              "My Profile",
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
                  const SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              20), // Half of the container's width or height to create a circular border
                          border: Border.all(
                            color:
                                mycolor.secondry, // Border color changed to red
                            width: 0.3, // Border width
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.store,
                              color: mycolor.appBar,
                              size: 40,
                            ),
                            const Text(
                              "Merchant's\nAccount",
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
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // Business Area

            //   DEVIDER

            Divider(
              color: mycolor.primaryColor, // Customize the color as needed
              thickness: 10, // Customize the thickness as needed
              height: 20, // Customize the height as needed
              indent: 0, // Customize the left indent as needed
              endIndent: 0, // Customize the right indent as needed
            ),

            const Icon(
              Icons.business,
              size: 100,
            ),

            const SizedBox(
              height: 30,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Business Arena",
                  textScaler: TextScaler.noScaling,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
// BUSINESS CARDS

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 3, 10, 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShopManagement()),
                  );
                },
                child: SizedBox(
                  width: 700,
                  height: 220,
                  child: Card(
                    color: const Color.fromRGBO(200, 237, 253, 1),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    elevation: 30,
                    child: Row(
                      children: [
                        const Spacer(),
                        Icon(
                          Icons.store,
                          size: 120,
                          color: mycolor.secondry,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            const SizedBox(
                              width: 190,
                              child: Text(
                                "Shop\nManagement",
                                textScaler: TextScaler.noScaling,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 60,
                              width: 150,
                              child: Card(
                                elevation: 5,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                color: mycolor.secondry,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      "Manage",
                                      textScaler: TextScaler.noScaling,
                                      style: TextStyle(
                                        color: mycolor.appBar,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_sharp,
                                      size: 12,
                                      color: mycolor.appBar,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //  Sales Man

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 3, 10, 10),
              child: SizedBox(
                width: 700,
                height: 220,
                child: Card(
                  color: const Color.fromRGBO(200, 237, 253, 1),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  elevation: 30,
                  child: Row(
                    children: [
                      const Spacer(),
                      Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          const SizedBox(
                            width: 190,
                            child: Text(
                              "Salesman",
                              textScaler: TextScaler.noScaling,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 60,
                            width: 150,
                            child: Card(
                              elevation: 5,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              color: mycolor.secondry,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    "Manage",
                                    textScaler: TextScaler.noScaling,
                                    style: TextStyle(
                                      color: mycolor.appBar,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    size: 12,
                                    color: mycolor.appBar,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Icon(
                        Icons.point_of_sale,
                        size: 120,
                        color: mycolor.secondry,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
    
  }
  
  void receiveMoneyDialog(BuildContext context) {
    showDialog(
      
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Dialog(            
           child :Container(
             decoration: BoxDecoration(
                  color: mycolor.backgroundColor,
                  borderRadius: BorderRadius.circular(
                    20), // Half of the container's width or height to create a circular border
                 
                ), 
              width: double.infinity,
              height: 400,
              // color: mycolor.backgroundColor, 
              // Green container
              child:  Column(
                children: [
                  //  Title 
                  const SizedBox(height: 10,),
                  const Text("Receive Money From",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                  ),

                SingleChildScrollView(
                  child: Column(
                    children: [

                        const SizedBox(height: 20,),

                     Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Paymentmethod()),
                        );
                      },
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                20), // Half of the container's width or height to create a circular border
                            border: Border.all(
                              color: mycolor
                                  .secondry, // Border color changed to red
                              width: 0.3, // Border width
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ImageIcon(
                                const AssetImage("assets/Logos/OIO_LOGO.png"),
                                color: mycolor.appBar,
                                size: 65,
                              ),
                              const Text(
                                "OIO PAY",
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
                  ),
                 
                  const SizedBox(
                    width: 15,
                  ),
                  Center(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              20), // Half of the container's width or height to create a circular border
                          border: Border.all(
                            color:
                                mycolor.secondry, // Border color changed to red
                            width: 0.3, // Border width
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.account_balance_outlined,
                              color: mycolor.appBar,
                              size: 40,
                            ),
                            const Text(
                              "Bank\nAccount",
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
                ],
              ),
            ),


             const SizedBox(height: 20,),

             Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              20), // Half of the container's width or height to create a circular border
                          border: Border.all(
                            color:
                                mycolor.secondry, // Border color changed to red
                            width: 0.3, // Border width
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.credit_card_outlined,
                              color: mycolor.appBar,
                              size: 40,
                            ),
                            const Text(
                              "Credit\nCards",
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
                ],
              ),
            ),
                    ],
                  ),
                )

                ],
              )
            ),
            
          ),
        );
      },
    );
  }

   void sendMoneyDialog(BuildContext context) {
    showDialog(
      
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Dialog(            
               child :Container(
                decoration: BoxDecoration(
                  color: mycolor.backgroundColor,
                  borderRadius: BorderRadius.circular(
                    20), // Half of the container's width or height to create a circular border
                 
                ),                  width: double.infinity,
                  height: 400,
                  // Green container
                  child:  Column(
                    children: [
                      //  Title 
                      const SizedBox(height: 10,),
                      const Text("Send Money To",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
              
                    SingleChildScrollView(
                      child: Column(
                        children: [
              
                            const SizedBox(height: 20,),
              
                         Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Paymentmethod()),
                            );
                          },
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    20), // Half of the container's width or height to create a circular border
                                border: Border.all(
                                  color: mycolor
                                      .secondry, // Border color changed to red
                                  width: 0.3, // Border width
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                   ImageIcon(
                                const AssetImage("assets/Logos/OIO_LOGO.png"),
                                color: mycolor.appBar,
                                size: 65,
                              ),
                                  const Text(
                                    "OIO PAY",
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
                      ),
                     
                      const SizedBox(
                        width: 15,
                      ),
                      Center(
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  20), // Half of the container's width or height to create a circular border
                              border: Border.all(
                                color:
                                    mycolor.secondry, // Border color changed to red
                                width: 0.3, // Border width
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.account_balance_outlined,
                                  color: mycolor.appBar,
                                  size: 40,
                                ),
                                const Text(
                                  "Bank\nTransfer",
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
                    ],
                  ),
                ),
              
              
                 const SizedBox(height: 20,),
              
                 Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Paymentmethod()),
                            );
                          },
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    20), // Half of the container's width or height to create a circular border
                                border: Border.all(
                                  color: mycolor
                                      .secondry, // Border color changed to red
                                  width: 0.3, // Border width
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.wallet_outlined,
                                    color: mycolor.appBar,
                                    size: 45,
                                  ),
                                  const Text(
                                    "Other Wallets",
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
                      ),
                     
                    
                    ],
                  ),
                ),
                        ],
                      ),
                    )
              
                    ],
                  )
                ),
                
              ),
        );
      },
    );
  }
}




