import 'package:facebook_clone/ui/widgets/createpostwidget.dart';
import 'package:facebook_clone/ui/widgets/postview.dart';
import 'package:facebook_clone/ui/widgets/story_view.dart';
import 'package:facebook_clone/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(padding: EdgeInsets.all(10), child: Createpostwidget()),
          const Divider(
            thickness: 4,
            color: Colors.black12,
          ),
          const StoryView(),

          const Divider(
            thickness: 4,
            color: Colors.black12,
          ),

          // Post
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
