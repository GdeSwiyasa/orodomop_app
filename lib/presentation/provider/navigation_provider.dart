import 'package:flutter/material.dart';
import 'package:orodomop_app/data/models/notes.dart';
import 'package:orodomop_app/domain/entities/screen.dart';

import 'package:orodomop_app/presentation/pages/home/home_screen.dart';
import 'package:orodomop_app/presentation/pages/home/set_timer_pomodoro_screen.dart';
import 'package:orodomop_app/presentation/pages/main_view.dart';
import 'package:orodomop_app/presentation/pages/note/add_note_page.dart';
import 'package:orodomop_app/presentation/pages/note/edit_note_page.dart';
import 'package:orodomop_app/presentation/pages/note/note_screen.dart';
import 'package:orodomop_app/presentation/pages/onboarding_screen.dart';
import 'package:orodomop_app/presentation/pages/settings/language_setting_screen.dart';
import 'package:orodomop_app/presentation/pages/settings/settings_screen.dart';
import 'package:orodomop_app/presentation/pages/settings/theme_settings_screen.dart';
import 'package:provider/provider.dart';

import '../pages/quote/quote_page.dart';

const homeScreen = 0;
const newsScreen = 1;
const noteScreen = 2;
const settingsScreen = 3;

class NavigationProvider extends ChangeNotifier {
  static NavigationProvider of(BuildContext context) =>
      Provider.of<NavigationProvider>(context, listen: false);

  int _currentScreenIndex = homeScreen;

  int get currentTabIndex => _currentScreenIndex;

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.route:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case OnBoardingScreen.route:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case EditNotePage.route:
        final notes = settings.arguments as NotesTable;
        return MaterialPageRoute(
            builder: (_) => EditNotePage(notes: notes), settings: settings);
      case SetTimerPomodoroScreen.route:
        return MaterialPageRoute(builder: (_) => SetTimerPomodoroScreen());
      case ThemeSettingScreen.route:
        return MaterialPageRoute(builder: (_) => ThemeSettingScreen());
      case LanguageSettingScreen.route:
        return MaterialPageRoute(builder: (_) => LanguageSettingScreen());
      case AddNotePage.route:
        return MaterialPageRoute(builder: (_) => AddNotePage());
      case QuotePage.route:
        return MaterialPageRoute(builder: (_) => QuotePage());
      default:
        return MaterialPageRoute(builder: (_) => MainView());
    }
  }

  final Map<int, Screen> _screens = {
    homeScreen: Screen(
      title: 'Home',
      icon: Icons.home,
      child: HomeScreen(),
      initialRoute: HomeScreen.route,
      navigatorState: GlobalKey<NavigatorState>(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case HomeScreen.route:
            return MaterialPageRoute(builder: (_) => HomeScreen());
          case SetTimerPomodoroScreen.route:
            return MaterialPageRoute(builder: (_) => SetTimerPomodoroScreen());
          default:
            return MaterialPageRoute(builder: (_) => HomeScreen());
        }
      },
      scrollController: ScrollController(),
    ),
    newsScreen: Screen(
      title: 'Quote',
      icon: Icons.newspaper,
      child: QuotePage(),
      initialRoute: QuotePage.route,
      navigatorState: GlobalKey<NavigatorState>(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          // case NewsWebViewPage.route:
          //   final String url = settings.arguments as String;
          //   return MaterialPageRoute(builder: (_) => NewsWebViewPage(url: url));
          default:
            return MaterialPageRoute(builder: (_) => const QuotePage());
        }
      },
      scrollController: ScrollController(),
    ),
    noteScreen: Screen(
      title: 'Note',
      icon: Icons.note,
      child: NoteScreen(),
      initialRoute: NoteScreen.route,
      navigatorState: GlobalKey<NavigatorState>(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AddNotePage.route:
            return MaterialPageRoute(builder: (_) => AddNotePage());
          case EditNotePage.route:
            final notes = settings.arguments as NotesTable;
            return MaterialPageRoute(
                builder: (_) => EditNotePage(notes: notes), settings: settings);
          default:
            return MaterialPageRoute(builder: (_) => NoteScreen());
        }
      },
      scrollController: ScrollController(),
    ),
    settingsScreen: Screen(
      title: 'Setting',
      icon: Icons.settings,
      child: SettingsScreen(),
      initialRoute: SettingsScreen.route,
      navigatorState: GlobalKey<NavigatorState>(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          default:
            return MaterialPageRoute(builder: (_) => SettingsScreen());
        }
      },
      scrollController: ScrollController(),
    ),
  };

  List<Screen> get screens => _screens.values.toList();

  Screen? get currentScreen => _screens[_currentScreenIndex];

  void setTab(int tab) {
    if (tab == currentTabIndex) {
      _scrollToTopOfPage();
    } else {
      _currentScreenIndex = tab;
      notifyListeners();
    }
  }

  void _scrollToTopOfPage() {
    if (currentScreen!.scrollController.hasClients) {
      currentScreen!.scrollController.animateTo(
        0.0,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  Future<bool> onWillPop(BuildContext context) async {
    final currentNavigatorState = currentScreen!.navigatorState.currentState;

    if (currentNavigatorState!.canPop()) {
      currentNavigatorState.pop();
      return false;
    } else {
      if (currentTabIndex != homeScreen) {
        setTab(homeScreen);
        notifyListeners();
        return false;
      } else {
        return await showDialog(
          context: context,
          builder: (context) => Dialog(),
        );
      }
    }
  }
}
