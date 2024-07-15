import 'package:facebook_clone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostView extends StatefulWidget {
  const PostView({super.key});

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  String? firstHalf;
  String? secondHalf;

  bool flag = true;
  final String description =
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.";
  @override
  void initState() {
    // TODO: implement initState
    if (description.length > 50) {
      firstHalf = description.substring(0, 50);
      secondHalf = description.substring(50, description.length);
    } else {
      firstHalf = description;
      secondHalf = "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://imgs.search.brave.com/KVWqy-esn3P_1VOGekButA3DS3Dmaz9P4u1QmmftyCk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/ZGV4ZXJ0by5jb20v/Y2RuLWNnaS9pbWFn/ZS93aWR0aD0zODQw/LHF1YWxpdHk9NjAs/Zm9ybWF0PWF1dG8v/aHR0cHM6Ly9lZGl0/b3JzLmRleGVydG8u/Y29tL3dwLWNvbnRl/bnQvdXBsb2Fkcy8y/MDIzLzExLzAyL2p1/anV0c3Uta2Fpc2Vu/LXRvamkuanBlZw"),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Rare Breed Mentality"),
                                ],
                              ),
                              Text("Follow"),
                              FaIcon(FontAwesomeIcons.ellipsis, size: 10),
                              Icon(Icons.close)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Text("2d"),
                              SizedBox(
                                width: 3,
                              ),
                              FaIcon(FontAwesomeIcons.earthAmericas, size: 10),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: secondHalf!.isEmpty
                  ? Text(firstHalf ?? "")
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(flag
                            ? ("$firstHalf...")
                            : ("$firstHalf$secondHalf")),
                        InkWell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                flag ? "show more" : "show less",
                                style: const TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                          onTap: () {
                            setState(() {
                              flag = !flag;
                            });
                          },
                        ),
                      ],
                    ),
            ),
            Image.network(
                "https://images.unsplash.com/flagged/photo-1561524891-9ca1802c88c0?q=80&w=2027&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: kBlueColor,
                        radius: 8,
                        child: FaIcon(
                          FontAwesomeIcons.thumbsUp,
                          size: 10,
                          color: Colors.white,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 8,
                        child: FaIcon(
                          FontAwesomeIcons.heart,
                          size: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text("Dee j Alted and 12k ohters",
                      style: TextStyle(fontSize: 12)),
                  SizedBox(
                    width: 6,
                  ),
                  Text("279 comments", style: TextStyle(fontSize: 12)),
                  Text("."),
                  Text("1.5k Shares", style: TextStyle(fontSize: 12)),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                FaIcon(FontAwesomeIcons.thumbsUp),
                SizedBox(
                  width: 5,
                ),
                Text("Like"),
              ],
            ),
            Row(
              children: [
                FaIcon(FontAwesomeIcons.comment),
                SizedBox(
                  width: 5,
                ),
                Text("comment"),
              ],
            ),
            Row(
              children: [
                FaIcon(FontAwesomeIcons.whatsapp),
                SizedBox(
                  width: 5,
                ),
                Text("Send"),
              ],
            ),
            Row(
              children: [
                FaIcon(FontAwesomeIcons.share),
                SizedBox(
                  width: 5,
                ),
                Text("Share"),
              ],
            ),
          ],
        ),
        const Divider(
          thickness: 4,
          color: Colors.black12,
        ),
      ],
    );
  }
}
