import 'package:flutter/widgets.dart';
import 'package:mentormee/screens/chat.dart';
import 'package:mentormee/screens/home.dart';

class FinalHome extends StatefulWidget {
  const FinalHome({super.key});

  @override
  State<FinalHome> createState() => _FinalHomeState();
}

class _FinalHomeState extends State<FinalHome> {
  PageController _controller = PageController(initialPage: 0); 

  @override 
  void dispose() {
    
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: _controller, 
      children: [
        Home(),
        Chatscn(),
      ],
    );
  }
}