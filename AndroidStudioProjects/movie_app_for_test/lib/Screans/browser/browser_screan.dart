import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data_for_browser/browser_movie_data/bloc/movie_list_cubit.dart';
import '../../data_for_browser/browser_movie_data/model_browser.dart';
import '../../data_for_browser/browser_movie_data/repo.dart';
import '../../data_for_browser/browser_movie_data/web_service.dart';
import '../../theme/appColor.dart';
import '../../theme/app_images.dart';
import '../../utilites/app_colors.dart';

class BrowserScrean extends StatefulWidget {
  const BrowserScrean({super.key});

  @override
  State<BrowserScrean> createState() => _BrowserScreanState();
}

class _BrowserScreanState extends State<BrowserScrean>
    with TickerProviderStateMixin {
  late TabController tabController;
  late List<Movies> movieList;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    movieList = [];
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieListCubit(Repo(WebService()))..getMovies(),
      child: BlocBuilder<MovieListCubit, MovieListState>(
        builder: (context, state) {
          if (state is MovieListLoaded) {
            movieList = state.movies;
          } else {
            movieList = [];
          }

          return Scaffold(
            backgroundColor: AppColor.backgroundcolor,
            body: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  TabBar(
                    controller: tabController,
                    indicatorPadding: EdgeInsets.zero,
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    indicatorColor: Colors.transparent,
                    dividerColor: Colors.transparent,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                    tabs: List.generate(4, (index) {
                      bool isSelected = tabController.index == index;
                      return Tab(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              tabController.animateTo(index);
                            });
                          },
                          child: Container(
                            width:
                                MediaQuery.of(context).size.width * 116 / 430,
                            height:
                                MediaQuery.of(context).size.height * 48 / 932,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(46),
                              color: isSelected
                                  ? AppColors.yallow
                                  : AppColor.black,
                              border: Border.all(
                                color: isSelected
                                    ? AppColors.black
                                    : AppColor.primary,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(width: 6),
                                Text(
                                  textAlign: TextAlign.center,
                                  [
                                    'Action',
                                    'Adventure',
                                    'Animation',
                                    'Comedy'
                                  ][index],
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: isSelected
                                        ? AppColors.black
                                        : AppColor.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 25 / 930),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        GridView.builder(
                          itemCount: movieList.length,
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 250,
                            childAspectRatio: 1 / 1.5,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                          ),
                          itemBuilder: (context, index) => Container(
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage(
                                    movieList[index].mediumCoverImage!),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 13, horizontal: 10),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 8),
                              decoration: BoxDecoration(
                                color: AppColor.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width:
                                  MediaQuery.of(context).size.width * 58 / 430,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '${movieList[index].rating}',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.white,
                                    ),
                                  ),
                                  Image.asset(AppImage.star),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Center(child: Text('2')),
                        const Center(child: Text('3')),
                        const Center(child: Text('4')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
