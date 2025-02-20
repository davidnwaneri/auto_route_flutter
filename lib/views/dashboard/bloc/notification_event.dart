part of 'notification_bloc.dart';

@immutable
abstract class NotificationEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchNotification extends NotificationEvent {}

final class InsertNotification extends NotificationEvent {
  InsertNotification(this.notification);
  final String notification;

  @override
  List<Object> get props => [notification];
}
