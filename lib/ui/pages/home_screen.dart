import 'package:facebook_clone/ui/pages/add_friend_screen.dart';
import 'package:facebook_clone/ui/pages/feed_screen.dart';
import 'package:facebook_clone/ui/pages/market_place_screen.dart';
import 'package:facebook_clone/ui/pages/notification_screen.dart';
import 'package:facebook_clone/ui/pages/video_screen.dart';
import 'package:facebook_clone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedTabIndex = 0;
  bool _showHeader = true;
  final ScrollController _scrollController = ScrollController();
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      print(_scrollController.position.pixels);
      if (_scrollController.position.pixels > 50 && _showHeader) {
        setState(() {
          _showHeader = false;
        });
      } else if (_scrollController.position.pixels <= 50 && !_showHeader) {
        setState(() {
          _showHeader = true;
        });
      }
    });
    _tabController =
        TabController(length: 6, vsync: this, initialIndex: _selectedTabIndex);
    _tabController.addListener(() {
      print(_tabController.index);
      setState(() {
        _selectedTabIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 6,
          child: NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder: (context, _) {
              return [
                SliverList(
                  delegate: SliverChildListDelegate([
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return FadeTransition(
                          opacity: animation,
                          child: SizeTransition(
                            sizeFactor: animation,
                            axis: Axis.vertical,
                            child: child,
                          ),
                        );
                      },
                      child: _selectedTabIndex == 0
                          ? const Padding(
                              key: ValueKey<int>(0),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "facebook",
                                        style: TextStyle(
                                            color: kBlueColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                      radius: 14,
                                      child: Icon(
                                        Icons.add,
                                        size: 20,
                                      )),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.messenger_outline,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            )
                          : Container(), // Empty container when it's not the home tab
                    )
                  ]),
                ),
              ];
            },
            body: Column(
              children: <Widget>[
                TabBar(
                  controller: _tabController,
                  labelColor: kBlueColor,
                  indicatorColor: kBlueColor,
                  onTap: (index) {
                    setState(() {
                      _selectedTabIndex = index;
                    });
                  },
                  tabs: const [
                    Tab(
                      icon: FaIcon(FontAwesomeIcons.house),
                    ),
                    Tab(
                      icon: FaIcon(FontAwesomeIcons.video),
                    ),
                    Tab(
                      icon: FaIcon(FontAwesomeIcons.userPlus),
                    ),
                    Tab(
                      icon: FaIcon(FontAwesomeIcons.store),
                    ),
                    Tab(
                      icon: FaIcon(FontAwesomeIcons.message),
                    ),
                    Tab(
                      icon: FaIcon(FontAwesomeIcons.bars),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      const FeedScreen(),
                      const VideoScreen(),
                      const AddFriendScreen(),
                      const MarketPlaceScreen(),
                      const NotificationScreen(),
                      ListView(
                        padding: EdgeInsets.zero,
                        children: Colors.primaries.map((color) {
                          return Container(color: color, height: 150.0);
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
