enum MessageTypes {
  reciever,
  sender,
}

class ChatMessage {
  String content;
  MessageTypes type;
  bool read;
  ChatMessage({
    required this.content,
    required this.type,
    this.read = false,
  });
}
