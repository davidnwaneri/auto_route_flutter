import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(NotificationInitial()) {
    on<FetchNotification>(_onFetchNotification);
    on<InsertNotification>(_onInsertNotification);
    add(FetchNotification());
  }

  Future<void> _onFetchNotification(FetchNotification event, Emitter<NotificationState> emit) async {
    emit(NotificationLoading());

    await Future<void>.delayed(const Duration(seconds: 3));

    emit(NotificationLoaded(['Notification 1', 'Notification 2']));
  }

  Future<void> _onInsertNotification(InsertNotification event, Emitter<NotificationState> emit) async {
    final List<String> notifications = (state as NotificationLoaded).notifications;
    // emit(NotificationLoading());

    // await Future<void>.delayed(const Duration(seconds: 3));

    emit(NotificationLoaded([event.notification, ...notifications]));
  }
}
