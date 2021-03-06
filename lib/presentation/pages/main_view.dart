import 'package:flutter/material.dart';
import 'package:orodomop_app/common/constant.dart';

import 'package:orodomop_app/presentation/provider/navigation_provider.dart';
import 'package:provider/provider.dart';

class MainView extends StatefulWidget {
  static const route = '/main_view';
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (context, provider, child) {
        final bottomNavigationBarItems = provider.screens
            .map(
              (screen) => BottomNavigationBarItem(
                icon: Icon(screen.icon),
                label: screen.title,
              ),
            )
            .toList();

        final screens = provider.screens
            .map(
              (screen) => Navigator(
                key: screen.navigatorState,
                onGenerateRoute: screen.onGenerateRoute,
              ),
            )
            .toList();

        return WillPopScope(
          onWillPop: () async => provider.onWillPop(context),
          child: Scaffold(
            body: IndexedStack(
              children: screens,
              index: provider.currentTabIndex,
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: bottomNavigationBarItems,
              currentIndex: provider.currentTabIndex,
              onTap: provider.setTab,
              selectedItemColor: kPrimaryColor,
            ),
          ),
        );
      },
    );
  }
}
