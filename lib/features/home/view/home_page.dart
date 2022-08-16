import 'package:flutter/material.dart';
import 'package:jig_racing/features/black_book/view/pages/black_book_page.dart';
import 'package:jig_racing/features/merchandise/view/pages/mechandise_page.dart';
import 'package:jig_racing/features/upcoming_races/view/pages/upcoming_races_page.dart';
import 'package:jig_racing/features/weekly_podcast/view/pages/weekly_podcast_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Black book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Upcoming races',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Weekly podcast',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Merchandise',
          ),
        ],
        backgroundColor: Colors.lightBlue,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(
            () {
              _selectedIndex = index;
              _pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.ease);
            },
          );
        },
      ),
      body: Container(
        color: Colors.cyan,
        child: PageView(
          controller: _pageController,
          children: const [
            BlackBookPage(),
            UpcomingRacesPage(),
            WeeklyPodcastPage(),
            MerchandisePage(),
          ],
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
