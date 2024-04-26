import 'package:flutter/widgets.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier
{
  /// Contralador para manejar la posición scroll
  final ScrollController chatScrollController = ScrollController();



  List<Message>messageList=
  [
    Message(text: 'Hola',fromWho: FromWho.me),
    Message(text: 'Kevin,se va ir a repe?',fromWho: FromWho.me)

  ];

Future<void> sendMessage (String text) async
{
  /// el mensaje siempre va ser mio porque
  /// yo, el usuario, siempre va ser mio el mensaje
  final newMessage = Message(text: text, fromWho: FromWho.me);
  ///agregar un mensaje a la lista 
  messageList.add(newMessage);
  /// Notificar si algo de provaider cambio para que
  /// se guarde en el estado
  notifyListeners();
  ///
}
Future<void> moveScrollToBottom() async
{
  await Future.delayed(const Duration(milliseconds: 100));
  chatScrollController.animateTo
  (
    //maxScrollExtent determina lo maximo que el  scroll puede estar
    chatScrollController.position.maxScrollExtent
     //offset :posición de la animación
    , duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
}
}