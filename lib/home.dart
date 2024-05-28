

import 'package:flutter/material.dart';
import 'package:oiopay/home_page/landing_page.dart';
import 'package:oiopay/other_pages/my_payment_methods_page.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}
 final PageController pagecontroller=PageController();

class _HomeState extends State<Home> {

int a = 0;
   int selindex=0;

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: AppBar(
backgroundColor:const  Color.fromRGBO(90, 200, 250, 1),
       title: const Text(
          "OIO PAY",
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
                Icons.menu,
                size: 28, // Your custom icon here
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      
      drawer: drawerr(context),


      // PAGE VIEWER
     body: PageView(
      
   controller: pagecontroller,
      physics: const NeverScrollableScrollPhysics(),
     
      children: [
        
        const MenuPage(),
        // const MonthMainPage( month: "89"),
      const Paymentmethod(),
          Container(color: const Color.fromRGBO(162, 210, 255, 1), 
          child:const Center(child: Text("Page 3"))),
      ],
     ),


    bottomNavigationBar: BottomNavigationBar(
backgroundColor:const  Color.fromRGBO(40, 40, 40, 1),
      
          selectedItemColor:const Color.fromRGBO(90, 200, 250, 1),
    unselectedItemColor:const Color.fromRGBO(255, 255, 255, 1),
      currentIndex: selindex,
      items: const [
   
      BottomNavigationBarItem(icon: Icon(Icons.home,
      size: 25,
      ),
      
      label: "0po09o",
      
      ),
         BottomNavigationBarItem(icon: Icon(Icons.home,
         size: 25,
         ),
      label: "home",
      ),
         BottomNavigationBarItem(icon: Icon(Icons.home,
         size: 25,
         ),
      label: "home",
      ),
    ],
    

    onTap: (index){
               pagecontroller.jumpToPage(index);
               
       
               setState((){     
                   selindex=index;
});
              
    },
    ),

    );
  }
}







// THIS IS THE METHOD DRAWER WHICH RETURNS A WIDGET TO OPEN ON A ACCOUNT ICON IN APP BAR

  Widget drawerr(BuildContext context) {
    return Drawer(
     
      backgroundColor:const Color.fromARGB(255, 74,144,226),
      child: ListView(
        children:  [
          ListTile(
           onTap: () {
        
          // Toggle the isSelected state when the ListTile is tapped
         pagecontroller.jumpToPage(0);
        //  Navigator.pop(context as BuildContext);
           Navigator.pop(context);

      },
            leading: const Icon(Icons.man_2_outlined,
            color: Colors.white,
            ),
            title:const Text("0",
            textScaler: TextScaler.noScaling,
              style:TextStyle(
                color: Colors.white,
                  fontStyle: FontStyle.italic
              ),
            ),
          ),
           ListTile(
             onTap: () {
        
          // Toggle the isSelected state when the ListTile is tapped
         pagecontroller.jumpToPage(1);
        //  Navigator.pop(context as BuildContext);
           Navigator.pop(context);

      },
            leading:const Icon(Icons.account_circle_outlined,
            color: Colors.white,
            ),
            title:const Text("777",
            textScaler: TextScaler.noScaling,
              style:TextStyle(
                color: Colors.white,
                  fontStyle: FontStyle.italic
              ),
            ),
          ),
          ListTile(
            onTap: () {
    // Toggle the isSelected state when the ListTile is tapped
    pagecontroller.jumpToPage(2);
    
    // Close the current page when the ListTile is tapped
    Navigator.pop(context);
  },
            leading: const Icon(Icons.man_3_outlined,
            color: Colors.white,
              size: 30,
            ),
            title:  const Text(
              "9999",
              textScaler: TextScaler.noScaling,
              style:TextStyle(
                color: Colors.white,
                  fontStyle: FontStyle.italic
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  void setState(Null Function() param0) {
  }

