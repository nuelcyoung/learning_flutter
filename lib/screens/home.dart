import 'package:flutter/material.dart';
import 'package:training/constant/constant.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

// abstract CustomAppBar  Widget() {
//   return Container(
//     color: Color(MyColors.kPrimaryColor),
//   );
// }

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      //appBar: customAppBar(),
      //body: const RandomWords(),
      body: SafeArea(
        //child: Container(
          //width: screenWidth*.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Color(MyColors.kPrimaryColor),
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 52.0,
                        child: Image.asset('assets/images/logo.png')),
                    const Text('Dashboard',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 24,
                        )),
                    const Icon(Icons.notifications_none, color: Colors.white),
                  ]),
            ),
            Container(
              height: 150.0,
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Color(MyColors.kPrimaryColor),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Balance',
                              style: TextStyle(
                                  color: Color(MyColors.kSecondaryColor),
                                  fontSize: 14)),
                          Text('\$5,000',
                              style: TextStyle(
                                  color: Color(MyColors.kSecondaryColor),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        children: [
                          Text('Account Name',
                              style: TextStyle(
                                  color: Color(MyColors.kSecondaryColor),
                                  fontSize: 16)),
                          Text('Chukwunalu Nuel Young',
                              style: TextStyle(
                                  color: Color(MyColors.kSecondaryColor),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                                  Text('Account Number',
                              style: TextStyle(
                                  color: Color(MyColors.kSecondaryColor),
                                  fontSize: 16)),
                          Text('0011604048',
                              style: TextStyle(
                                  color: Color(MyColors.kSecondaryColor),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          //Expanded(child: Text('Transfer to this account to fund your wallet instantly',style: TextStyle(color: Color(MyColors.kSecondaryColor),fontSize: 14,fontWeight: FontWeight.bold))),
                        ],
                      ),
                      

                    ],
                  ),
                  const SizedBox(height:5.0),
                  Center(
                    child: Text("Make a transfer to the account above to fund account",style: TextStyle(color: Color(MyColors.kSecondaryColor),fontWeight: FontWeight.w600),),
                  )
                  
                ],
              ),
            ),
            
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 25,
        backgroundColor: const Color(0xff03174c),
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(Icons.apps),
            title: const Text('Home'),
            activeColor: const Color(0xffffffff),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.settings_accessibility),
            title: const Text('Paybills'),
            activeColor: const Color(0xffffffff),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.settings_accessibility),
            title: const Text('Buy Data'),
            activeColor: const Color(0xffffffff),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.settings_accessibility),
            title: const Text('History'),
            activeColor: const Color(0xffffffff),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  // SliverToBoxAdapter _buildHeader(double screenHeight) {
  //   return SliverToBoxAdapter(
  //     child: Container(
  //       height: 150.0,
  //       padding: const EdgeInsets.all(20.0),
  //       decoration: BoxDecoration(
  //         color: Color(MyColors.kBackground),
  //         // borderRadius: const BorderRadius.only(
  //         //   bottomLeft: Radius.circular(40.0),
  //         //   bottomRight: Radius.circular(40.0),
  //         //   ),
  //       ),
  //     ),
  //   );
  // }
}
