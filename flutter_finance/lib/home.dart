import 'package:flutter/material.dart';
import 'package:flutter_finance/screens/chart_screen.dart';
import 'package:flutter_finance/screens/landing_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab = 0;
  final List<Widget> screens = const [LandingScreen(), ChartScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: _currentTab,
        children: screens,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        elevation: 20.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.home),
                color: _currentTab == 0
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.secondary,
                onPressed: () {
                  setState(() {
                    _currentTab = 0;
                  });
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.show_chart),
                color: _currentTab == 1
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.secondary,
                onPressed: () {
                  setState(() {
                    _currentTab = 1;
                  });
                },
              ),
            ),
            const Expanded(child: Text('')),
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.tab),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
