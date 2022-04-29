import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/user.dart';


part 'user_state.dart';
part 'user_event.dart';

class UserBloc extends Bloc<UserEvent, UserState> {

  UserBloc() : super(UserLoading()) {
    on<LoadUser>(_onLoadUser);
    on<UpdateUser>(_onUpdateUser);
  }

  void _onLoadUser(LoadUser event, Emitter<UserState> emit) {
    add(UpdateUser(User.user));
  }

  void _onUpdateUser(UpdateUser event, Emitter<UserState> emit) {
    emit(UserLoaded(user: event.user));
  }
}
