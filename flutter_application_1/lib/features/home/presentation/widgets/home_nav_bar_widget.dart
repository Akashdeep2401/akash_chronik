
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_assets.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/features/cart/presentation/views/cart_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/home_view.dart';
import 'package:flutter_application_1/features/profile/presentation/views/profile_view.dart';
import 'package:flutter_application_1/features/search/presentation/views/search_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
PersistentTabController _controller = PersistentTabController();


class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context, 
      screens: _buildScreens() ,
      items: _navBarsItems(),
      controller: _controller,
      navBarStyle: NavBarStyle.style12,
      backgroundColor: AppColors.primaryColor,
        decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
      );
  }
}

List<Widget> _buildScreens() {
    return [
          const HomeView(),
          //const CartView(),
          const SearchView(),
          const ProfileView(),
          ];
}

List<PersistentBottomNavBarItem> _navBarsItems(){
    return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesHomeIconActive),
      inactiveIcon: SvgPicture.asset(Assets.imagesHomeIcon),
    ),
    /*PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesShoppingCartActive),
      inactiveIcon: SvgPicture.asset(Assets.imagesShoppingCart),
    ),*/
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesSearchActive),
      inactiveIcon: SvgPicture.asset(Assets.imagesSearch),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesPersonActive),
      inactiveIcon: SvgPicture.asset(Assets.imagesPerson),
    ),
  ];
}