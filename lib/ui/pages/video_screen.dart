import 'package:facebook_clone/ui/pages/feed_screen.dart';
import 'package:facebook_clone/ui/widgets/postview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Video",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ],
                ),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.user),
                    SizedBox(
                      width: 10,
                    ),
                    FaIcon(FontAwesomeIcons.magnifyingGlass)
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 4,
            color: Colors.black12,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return const PostView();
            },
          )
        ],
      ),
    );
  }
}
