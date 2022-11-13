import 'package:fhe_template/module/dashboard/view/dashboard_view.dart';
import 'package:flutter/material.dart';

class BasicMainNavigationView extends StatefulWidget {
  const BasicMainNavigationView({Key? key}) : super(key: key);

  @override
  State<BasicMainNavigationView> createState() =>
      _BasicMainNavigationViewState();
}

class _BasicMainNavigationViewState extends State<BasicMainNavigationView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    updateView(int index) {
      selectedIndex = index;
      setState(() {});
    }

    return DefaultTabController(
      length: 4,
      initialIndex: selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: [
            const DashboardView(),
            Container(
              color: Colors.red[100],
            ),
            Container(
              color: Colors.purple[100],
            ),
            Container(
              color: Colors.blue[100],
            ),
          ],
        ),

        bottomNavigationBar: Container(
          height: 60.0,
          color: Colors.white,
          child: SizedBox(
            height: 100.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    selectedIndex = 0;
                    setState(() {});
                  },
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: (selectedIndex == 0)
                          ? const Color(0xfff9c9290)
                          : Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Icon(
                      Icons.home_outlined,
                      color: (selectedIndex == 0)
                          ? Colors.white
                          : const Color(0xfff9c9290),
                      size: 28.0,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    selectedIndex = 1;
                    setState(() {});
                  },
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: (selectedIndex == 1)
                          ? const Color(0xfff9c9290)
                          : Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: (selectedIndex == 1)
                          ? Colors.white
                          : const Color(0xfff9c9290),
                      size: 28.0,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    selectedIndex = 2;
                    setState(() {});
                  },
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: (selectedIndex == 2)
                          ? const Color(0xfff9c9290)
                          : Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Icon(
                      Icons.star_border_outlined,
                      color: (selectedIndex == 2)
                          ? Colors.white
                          : const Color(0xfff9c9290),
                      size: 28.0,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    selectedIndex = 3;
                    setState(() {});
                  },
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: (selectedIndex == 3)
                          ? const Color(0xfff9c9290)
                          : Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Icon(
                      Icons.person_outline,
                      color: (selectedIndex == 3)
                          ? Colors.white
                          : const Color(0xfff9c9290),
                      size: 28.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   backgroundColor: Colors.green,
        //   currentIndex: selectedIndex,
        //   selectedItemColor: Colors.grey[700],
        //   unselectedItemColor: Colors.grey[500],
        //   onTap: (index) {
        //     selectedIndex = index;
        //     setState(() {});
        //   },
        //   items: const [
        //     BottomNavigationBarItem(

        //       label: "Home",
        //       icon: Icon(
        //         Icons.home,
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       label: "Order",
        //       icon: Icon(
        //         Icons.list,
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       label: "Favorite",
        //       icon: Icon(
        //         Icons.favorite,
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       label: "Me",
        //       icon: Icon(
        //         Icons.person,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
