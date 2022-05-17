part of 'main_layout_menu_cubit.dart';

@freezed
class MainLayoutMenuState with _$MainLayoutMenuState {
  const factory MainLayoutMenuState(int currentIndex) = _MainLayoutMenuState;

  factory MainLayoutMenuState.initial() => const MainLayoutMenuState(0);
}
