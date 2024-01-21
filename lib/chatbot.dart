import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class Chat {
  String text;
  bool amsender;

  Chat(this.text, this.amsender);
}

class _ChatScreenState extends State<ChatScreen> {
  late OpenAI openAI;
  final TextEditingController _controller = TextEditingController();

  final List<Chat> _conversations = [];

  @override
  void initState() {
    openAI = OpenAI.instance
        .build(token: "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");
    super.initState();
  }

  void send() async {
    var text = _controller.text;
    if (text.trim().isEmpty) {
      return;
    }

    setState(() {
      _conversations.add(Chat(text, true));
    });

    try {
      var resp = await openAI.onCompletion(
          request: CompleteText(prompt: text, model: TextAda001Model()));

      if (resp!.choices.isNotEmpty) {
        setState(() {
          _conversations.add(Chat(resp.choices.last.text.trim(), false));
        });
      }
    } catch (e) {
      // Handle exceptions here
      print('Error: $e');
      // You can display an error message to the user or perform other error-handling actions
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Bot'),
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            reverse: true,
            itemBuilder: (context, index) {
              var convo = _conversations[index];
              return Align(
                alignment: convo.amsender
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Chip(
                  backgroundColor: convo.amsender ? Colors.blue : Colors.grey,
                  label: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      convo.text,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              );
            },
            itemCount: _conversations.length,
          ),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onSubmitted: (value) {
                      send();
                    },
                    decoration: InputDecoration(hintText: "Type Here..."),
                  ),
                ),
                IconButton(onPressed: send, icon: Icon(Icons.send))
              ],
            ),
          ),
        )
      ]),
    );
  }
}
