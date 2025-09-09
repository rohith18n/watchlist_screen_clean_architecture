import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class NavCubit extends Cubit<int> {
  NavCubit() : super(0);

  void changeTab(int index) => emit(index);
}
