import 'models/chat_message.dart';

final List<ChatMessage> messages = [
  ChatMessage(
    content:
        "Lorem ipsum dolor sit amet.'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet.",
    type: MessageTypes.reciever,
    read: false,
  ),
  ChatMessage(
    content: 'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. ',
    type: MessageTypes.sender,
    read: false,
  ),
  ChatMessage(
    content:
        'Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.Lorem ipsum dolor',
    type: MessageTypes.sender,
    read: true,
  ),
  ChatMessage(
    content:
        'Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.Lorem ipsum dolor',
    type: MessageTypes.reciever,
    read: true,
  ),
];
