class ChatModel{
  final String name;
  final String message;
  final String time;
  final String avatar;

  static var length;
  ChatModel({required this.name,
   required this.message, 
   required this.time, 
   required this.avatar});
}


List<ChatModel> chatData=[
  ChatModel(
    name: 'Rahul',
    message: 'Kal Chalate Hia?',
    time: '10.20',
    avatar: 'images/2.jpg',
  ),
   ChatModel(
    name: 'Rohit',
    message: 'bhai abi mai nhi free hu',
    time: '10.45',
    avatar: 'images/3.jpg',
  ),
  ChatModel(
    name: 'Dipak',
    message: 'Hell bro!',
    time: '12.12',
    avatar: 'images/4.jpg',
  ),
  ChatModel(
    name: 'Nitish',
    message: 'Ha bhai kaise ho!',
    time: '12.35',
    avatar: 'images/5.jpg'
  ),
  ChatModel(
    name: 'Shikhar',
    message: 'mai ghar pr hu',
    time: '07.30',
    avatar: 'images/6.jpg'
  ),
  ChatModel(
    name: 'Raj',
    message: 'bhi jaldi nikalana hai ',
    time: '9.12',
    avatar: 'images/7.jpg'
  ),
  ChatModel(
    name: 'Dipu',
    message: 'Gwyer Hall',
    time: '8.00',
    avatar: 'images/8.jpg'
  ),
  ChatModel(
    name: 'Ravi',
    message: 'Good Night',
    time: '12.35',
    avatar: 'images/1.jpg'
  ),
  ChatModel(
    name: 'Nitish',
    message: 'Ha bhai kaise ho!',
    time: '12.35',
    avatar: 'images/2.jpg'
  ),
  ChatModel(
    name: 'Nitish',
    message: 'Ha bhai kaise ho!',
    time: '12.35',
    avatar: 'images/4.jpg'
  ),
  ChatModel(
    name: 'Raju',
    message: 'Ha bhai kaise ho!',
    time: '12.35',
    avatar: 'images/3.jpg'
  ),
  ChatModel(
    name: 'Dipak',
    message: 'Ha bhai kaise ho!',
    time: '12.35',
    avatar: 'images/4.jpg'
  ),
];