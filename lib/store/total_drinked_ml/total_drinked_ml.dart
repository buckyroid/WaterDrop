import 'package:mobx/mobx.dart';

part 'total_drinked_ml.g.dart';

class TotalDrinkedMl = _TotalDrinkedMl with _$TotalDrinkedMl;

abstract class _TotalDrinkedMl with Store {
  @observable
  int totalDrinkedMl = 0;

  @action
  void increase(int drinkedMl) {
    totalDrinkedMl = totalDrinkedMl + drinkedMl;
  }
}
