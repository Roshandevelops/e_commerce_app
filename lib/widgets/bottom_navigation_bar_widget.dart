import 'package:e_commerce_app/home_screen.dart';
import 'package:e_commerce_app/utils/constants/k_colors.dart';
import 'package:e_commerce_app/view/home/profile_screen.dart';
import 'package:e_commerce_app/view/home/store_screen.dart';
import 'package:e_commerce_app/view/home/wish_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishListScreen(),
    const ProfileScreen(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[selectedIndex],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xFFE0D7D7),
                blurRadius: 0.1,
                offset: Offset(0, 0),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                20,
              ),
              topRight: Radius.circular(20),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              backgroundColor: Colors.white,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.green,
              onTap: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              currentIndex: selectedIndex,
              items: const [
                BottomNavigationBarItem(
                    backgroundColor: KColors.kwhite,
                    icon: Icon(Iconsax.home),
                    label: "Home"),
                BottomNavigationBarItem(
                    backgroundColor: KColors.kwhite,
                    icon: Icon(Iconsax.shop),
                    label: "Store"),
                BottomNavigationBarItem(
                    backgroundColor: KColors.kwhite,
                    icon: Icon(Iconsax.heart),
                    label: "WishList"),
                BottomNavigationBarItem(
                    backgroundColor: KColors.kwhite,
                    icon: Icon(Iconsax.user),
                    label: "Profile"),
              ],
            ),
          ),
        ));
  }
}
