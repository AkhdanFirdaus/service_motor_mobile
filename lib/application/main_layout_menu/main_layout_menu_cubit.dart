import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_layout_menu_state.dart';
part 'main_layout_menu_cubit.freezed.dart';

@injectable
class MainLayoutMenuCubit extends Cubit<MainLayoutMenuState> {
  MainLayoutMenuCubit() : super(MainLayoutMenuState.initial());

  bool isSelected(int index) => state.currentIndex == index;

  void changePage(int index) {
    emit(state.copyWith(currentIndex: index));
  }
}
