import 'package:flutter/material.dart';
import 'package:zaswar/providers/common.dart';
import 'package:zaswar/screens/movies.dart';
import 'package:zaswar/screens/profile.dart';
import 'package:zaswar/screens/wishlist.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Widget> _totalPage = [MoviesPage(), WishListPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Consumer<CommonProvider>(
      builder: ((context, provider, child) {
        return Scaffold(
          backgroundColor: Color(0xff36393f),
          body: SafeArea(
            child: _totalPage[provider.currentIdx],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: provider.currentIdx,
            onTap: provider.changeCurrentIdx,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.movie),
                label: "Кино",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Дуртай",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Профайл",
              ),
            ],
          ),
        );
      }),
    );
  }
}
