import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();

    Size screenSize;
    screenSize = MediaQuery.of(context).size;
    return AnimSearchBar(
      width: screenSize.width,
      textController: textController,
      onSuffixTap: () {
        setState(() {
          textController.clear();
        });
      },
      onSubmitted: (String value) {},
    );
  }
}
