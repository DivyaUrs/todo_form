import 'package:bloc/bloc.dart';
import 'model.dart';
import 'state.dart';
import 'event.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(CurrentNavigationState(navigation: Navigation.all));

  @override
  Stream<NavigationState> mapEventToState(NavigationEvent event) async* {
    if(event is UpdateNavigationEvent) {
      yield CurrentNavigationState(navigation: event.navigation);
    }
  }

}