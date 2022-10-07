import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends HydratedBloc<HomeEvent, HomeState> {
  HomeBloc() : super(defaultHomeState) {
    on<NavigationEvent>((event, emit) => emit(
          state.copyWith(index: event.index),
        ));
  }

  @override
  HomeState fromJson(Map<String, dynamic> json) => HomeState.fromJson(json);

  @override
  Map<String, dynamic> toJson(HomeState state) => state.toJson();
}
