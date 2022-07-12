import 'package:flutter/material.dart';
import 'package:headspace_clone/misc/app_colors.dart';
import 'package:headspace_clone/views/focus_page.dart';
import 'package:headspace_clone/views/home_page.dart';
import 'package:headspace_clone/views/meditate_page.dart';
import 'package:headspace_clone/views/move_page.dart';
import 'package:headspace_clone/views/sleep_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  final PageStorageBucket bucket = PageStorageBucket();
  TabController? tabController;
  List<Widget> pages = [
    const Homepage(),
    const Meditatepage(),
    const Sleeppage(),
    const Movepage(),
    const Focuspage()
  ];
  int currentIndex = 0;

// On Tap Navigation Items
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    tabController = TabController(initialIndex: 0, length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: pages[currentIndex],
        bottomNavigationBar: SafeArea(
          child: BottomNavigationBar(
            onTap: onTap,
            type: BottomNavigationBarType.fixed,
            backgroundColor: home,
            currentIndex: currentIndex,
            selectedItemColor: secondary,
            unselectedItemColor: white.withOpacity(0.4),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            items: [
              BottomNavigationBarItem(
                  label: "Today",
                  icon: Icon(
                    Icons.today,
                    color: white.withOpacity(0.4),
                  )),
              BottomNavigationBarItem(
                  label: "Meditate",
                  icon: Icon(
                    Icons.circle_outlined,
                    color: white.withOpacity(0.4),
                  )),
              BottomNavigationBarItem(
                  label: "Sleep",
                  icon: Icon(
                    Icons.mode_night_outlined,
                    color: white.withOpacity(0.4),
                  )),
              BottomNavigationBarItem(
                  label: "Move",
                  icon: Icon(
                    Icons.move_up,
                    color: white.withOpacity(0.4),
                  )),
              BottomNavigationBarItem(
                  label: "Focus",
                  icon: Icon(
                    Icons.center_focus_strong,
                    color: white.withOpacity(0.4),
                  )),
            ],
          ),
        ));
  }
}

class NavBarIndicator extends Decoration {
  final Color color;
  double radius;
  NavBarIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
