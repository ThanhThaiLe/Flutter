import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const ChatBotApp());
}

class ChatBotApp extends StatelessWidget {
  const ChatBotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Bot',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> messages = [];

  final TextEditingController _textEditingController = TextEditingController();

  void _sendMessage(String message) async {
    setState(() {
      messages.add('User: $message');
    });
    _textEditingController.clear();

    // Gửi yêu cầu đến API của ChatGPT
    String botResponse = await sendRequestToChatGPT(message);
    setState(() {
      messages.add('Bot: $botResponse');
    });
  }

  Future<String> sendRequestToChatGPT(String message) async {
    var url = Uri.parse(
        'https://chat.openai.com/'); // Thay thế <API_ENDPOINT> bằng API endpoint của ChatGPT

    // Thay thế <API_KEY> bằng thông tin xác thực (API key, token, hoặc bất kỳ thông tin xác thực nào khác)
    var headers = {
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer <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>',
    };

    var body =
        '{"message": "$message"}'; // Tạo body cho yêu cầu, chứa nội dung tin nhắn từ người dùng

    var response = await http.post(url,
        headers: headers, body: body); // Gửi yêu cầu POST đến API của ChatGPT
    if (response.statusCode == 200) {
      var jsonResponse = response.body; // Nhận phản hồi từ API
      return jsonResponse;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Bot'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Type your message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    _sendMessage(_textEditingController.text);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
