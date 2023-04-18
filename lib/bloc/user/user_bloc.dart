import 'dart:async';

import 'package:capital_app/service/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class UserEvent {
  const UserEvent();
}

class GetAllUserNames extends UserEvent {}

class UserBloc extends Bloc<UserEvent, UserState> {
  UserService userService = UserService();
  List<String> allUserNames = [];

  UserBloc() : super(FetchUserInitial()) {
    on<GetAllUserNames>(_getAllUsers);
  }

  Future _getAllUsers(GetAllUserNames e, Emitter<UserState> emit) async {
    List<String> d = await userService.getUserNames();
    if (d.isNotEmpty) {
      allUserNames = d;
      emit(GotUserNames(allUserNames: allUserNames));
    }
  }
}

abstract class UserState {
  const UserState();
}

class FetchUserInitial extends UserState {}

class GotUserNames extends UserState {
  final List<String> allUserNames;
  GotUserNames({required this.allUserNames});
}
