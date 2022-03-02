part of 'newsapp_cubit.dart';

@immutable
abstract class NewsappState {}

class NewsappInitial extends NewsappState {}
class CurrentindexState extends NewsappState{
  int currentIndex;
  CurrentindexState(this.currentIndex);
}
class ThemeModeState extends NewsappState{
  bool isDark;
  ThemeModeState(this.isDark);
}
class seatchedAtriclesState extends NewsappState{
  List articles;
  seatchedAtriclesState(this.articles);
}
class seatchedEmptyState extends NewsappState{}
class seatchedLoadingsState extends NewsappState{}