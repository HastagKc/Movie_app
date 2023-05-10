import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Moive Tmdb',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.amberAccent,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottom: TabBar(
            physics: NeverScrollableScrollPhysics(),
            indicator: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
            tabs: [
              Tab(
                text: 'Popular',
              ),
              Tab(
                text: 'Top_rated',
              ),
              Tab(
                text: 'UpComming',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Popular')),
            Center(child: Text('Top Rated ')),
            Center(child: Text('Upcommig')),
          ],
        ),
      ),
    );
  }
}
