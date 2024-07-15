import 'package:flutter/material.dart';

class Createpostwidget extends StatelessWidget {
  const Createpostwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: TextFormField(
            readOnly: true,
            decoration: InputDecoration(
                hintText: "    What's on your mind?",
                isDense: true, // important line
                contentPadding: const EdgeInsets.fromLTRB(
                    10, 15, 10, 0), // control your hints text size
                hintStyle: const TextStyle(
                    letterSpacing: 2,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
                fillColor: Colors.white30,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none)),
          ),
        ),
        const Icon(
          Icons.image,
          color: Colors.red,
        )
      ],
    );
  }
}
