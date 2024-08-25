import 'package:dartz/dartz.dart';
import 'package:ecommerce_app_ca_tdd/core/errors/failure/failures.dart';
import 'package:ecommerce_app_ca_tdd/core/usecases/usecases.dart';
import 'package:ecommerce_app_ca_tdd/features/chat/data/models/chat_models.dart';
import 'package:ecommerce_app_ca_tdd/features/chat/domain/repository/repository.dart';

class GetMessagesUsecase  implements UseCase<List<ChatModel>, String> {
  final ChatRepository abstractChatRepository;

  GetMessagesUsecase(this.abstractChatRepository);

  @override
  Future<Either<Failure, List<ChatModel>>> call(String chatId)async {
    return await abstractChatRepository.getChatMessages(chatId); 

  }
}