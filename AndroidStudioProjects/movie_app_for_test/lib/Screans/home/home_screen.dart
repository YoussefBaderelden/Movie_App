import 'package:flutter/material.dart';
import '../../Data/movie_api.dart';
import '../../Widget/movie_card.dart';
import '../../theme/appColor.dart';
import '../../theme/app_images.dart';
import '../browser/browser_screan.dart';
import '../profile/profile_screan.dart';
import '../search/search.dart';
import 'bottom_nav_items/browse_icon.dart';
import 'bottom_nav_items/hom_icon.dart';
import 'bottom_nav_items/profile_icon.dart';
import 'bottom_nav_items/search_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Map<String, dynamic>>> movies;

  @override
  void initState() {
    super.initState();
    movies = fetchMovies();
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getBodyContent() {
    switch (_selectedIndex) {
      case 0:
        return FutureBuilder<List<Map<String, dynamic>>>(
          future: movies,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No Movies Available'));
            } else {
              List<Map<String, dynamic>> movieList = snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.67,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppImage.background),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  AppColor.backgroundcolor,
                                  AppColor.backgroundcolor.withOpacity(0.1),
                                  AppColor.backgroundcolor.withOpacity(0.2),
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.63,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImage.background2),
                                fit: BoxFit.contain,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.33 -
                              200 / 1.5,
                          left: MediaQuery.of(context).size.width * 0.5 - 325,
                          child: MovieCard(
                            imagePath: movieList[1]['medium_cover_image'] ?? '',
                            rating: movieList[1]['rating'].toString(),
                            title: movieList[1]['title'] ?? '',
                            year: movieList[1]['year']?.toString() ?? '',
                            cardWidth: 180,
                            cardHeight: 270,
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.33 -
                              200 / 1.2,
                          left: MediaQuery.of(context).size.width * 0.5 - 110,
                          child: MovieCard(
                            imagePath: movieList[0]['medium_cover_image'] ?? '',
                            rating: movieList[0]['rating'].toString(),
                            title: movieList[0]['title'] ?? '',
                            year: movieList[0]['year']?.toString() ?? '',
                            cardWidth: 220,
                            cardHeight: 350,
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.33 -
                              200 / 1.5,
                          left: MediaQuery.of(context).size.width * 0.5 + 145,
                          child: MovieCard(
                            imagePath: movieList[2]['medium_cover_image'] ?? '',
                            rating: movieList[2]['rating'].toString(),
                            title: movieList[2]['title'] ?? '',
                            year: movieList[2]['year']?.toString() ?? '',
                            cardWidth: 180,
                            cardHeight: 270,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Action',
                                style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'See More',
                                    style: TextStyle(
                                      color: AppColor.primary,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Image.asset(
                                    AppImage.arrowRight,
                                    width: 16,
                                    height: 16,
                                    color: AppColor.primary,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 250,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: movieList.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: MovieCard(
                                    imagePath: movieList[index]
                                            ['medium_cover_image'] ??
                                        '',
                                    rating:
                                        movieList[index]['rating'].toString(),
                                    title: movieList[index]['title'] ?? '',
                                    year:
                                        movieList[index]['year']?.toString() ??
                                            '',
                                    cardWidth: 180,
                                    cardHeight: 250,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        );
      case 1:
        return const Search();
      case 2:
        return const BrowserScrean();
      case 3:
        return const ProfileScrean();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: AppColor.brown,
      ),
      home: Scaffold(
        backgroundColor: AppColor.backgroundcolor,
        body: _getBodyContent(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.transparent,
          selectedItemColor: AppColor.white,
          unselectedItemColor: AppColor.white,
          items: [
            BottomNavigationBarItem(
              icon: HomeIcon(isSelected: _selectedIndex == 0),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SearchIcon(isSelected: _selectedIndex == 1),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: BrowseIcon(isSelected: _selectedIndex == 2),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ProfileIcon(isSelected: _selectedIndex == 3),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
