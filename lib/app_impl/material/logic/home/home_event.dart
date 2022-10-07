abstract class HomeEvent {}

class NavigationEvent extends HomeEvent {
  NavigationEvent({required this.index});
  final int index;
}
