import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:mentormee/screens/vcall.dart';



class Chatscn2 extends StatefulWidget {
  Chatscn2({Key? key}) : super(key: key);

  @override
  State<Chatscn2> createState() => _ChatscnState();
}

class _ChatscnState extends State<Chatscn2> {
   List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.white,
       // title: Text('Chats',style: TextStyle(color: Colors.black),),
        // leading: InkWell(
        //   onTap: (){
        //     Navigator.pop(context);
        //   },
        //   child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
       
        actions: [
        // IconButton(onPressed: (){
         // Navigator.push(context, MaterialPageRoute(builder: ((context) => Vcall())));
        // },
        //  icon:Icon(Icons.video_call_outlined,size: 30,color: Colors.black,)),
        //  IconButton(onPressed: (){}, 
        //  icon:Icon(Icons.phone,size: 30,color: Colors.black,)),
         IconButton(onPressed: (){}, 
         icon:Icon(Icons.phone,size: 30,color: Colors.black,))
        ],
        elevation: 0,
      ),
      body: 
      Chat(messages: _messages, onSendPressed:_handleSendPressed, user: _user),
    );
  }
 void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: 'id',
      text: message.text,
    );

    _addMessage(textMessage);
  }
    void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }
}