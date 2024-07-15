import 'package:facebook_clone/utils/constants.dart';
import 'package:flutter/material.dart';

class StoryView extends StatelessWidget {
  const StoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return index == 0
                ? Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            margin: const EdgeInsets.all(5),
                            height: 170,
                            width: 90,
                            child: Stack(
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15)),
                                      child: SizedBox(
                                        height: 120,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Image.network(
                                          "https://images.unsplash.com/photo-1592046285097-6cdf4daf0d69?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 3),
                                      child: Text("Create Story"),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  bottom: 35,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        color: kBlueColor,
                                        shape: BoxShape.circle),
                                    alignment: Alignment.center,
                                    child: const Icon(
                                      Icons.add,
                                      size: 24,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                margin: const EdgeInsets.all(5),
                                height: 170,
                                width: 90,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1592046285097-6cdf4daf0d69?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, bottom: 10),
                                  child: const Text(
                                    "Manas Digin",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10),
                                child: CircleAvatar(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
          }),
    );
  }
}
