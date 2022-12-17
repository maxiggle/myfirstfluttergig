// enum SenderAndReceiver { senderThread, receiverThread }

class Thread {
  String name;
  String content;
  bool isRead;
  DateTime createdAt;
  bool isSender;

  Thread({
    required this.name,
    required this.content,
    this.isRead = false,
    this.isSender = false,
    required this.createdAt,
  });
}

final List<Thread> threads = [
  Thread(
    name: 'Raymond Ativie',
    content: 'Hello there',
    createdAt: DateTime.parse('2022-11-01 12:12:00'),
    isSender: false,
    isRead: true,
  ),
  Thread(
    name: 'Godwin Alex',
    content: 'How are you?',
    createdAt: DateTime.parse('2022-11-01 12:35:00'),
    isSender: true,
    isRead: true,
  ),
  Thread(
    name: 'Raymond Ativie',
    content: 'I am fine',
    createdAt: DateTime.parse('2022-11-01 12:45:00'),
    isSender: false,
  ),
  Thread(
    name: 'Godwin Alex',
    content: 'When will it begin?',
    createdAt: DateTime.parse('2022-11-01 12:35:00'),
    isSender: true,
  ),
  Thread(
    name: 'Raymond Ativie',
    content: 'Today',
    createdAt: DateTime.parse('2022-11-01 12:35:00'),
    isSender: false,
    isRead: true,
  ),
  Thread(
    name: 'Raymond Ativie',
    content: 'Today',
    createdAt: DateTime.parse('2022-11-01 12:35:00'),
    isSender: false,
  ),
  Thread(
    name: 'Raymond Ativie',
    content: 'Today',
    createdAt: DateTime.parse('2022-11-01 12:35:00'),
    isSender: false,
    isRead: true,
  ),
];
