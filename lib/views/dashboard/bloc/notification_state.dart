part of 'notification_bloc.dart';

@immutable
sealed class NotificationState extends Equatable {
  @override
  List<Object> get props => [];
}

final class NotificationInitial extends NotificationState {}

final class NotificationLoading extends NotificationState {}

final class NotificationLoaded extends NotificationState {
  NotificationLoaded(this.notifications);
  final List<String> notifications;

  @override
  List<Object> get props => [notifications];
}

final class NotificationError extends NotificationState {
  NotificationError(this.message);
  final String message;

  @override
  List<Object> get props => [message];
}
