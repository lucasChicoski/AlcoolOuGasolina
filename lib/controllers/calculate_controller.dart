import 'package:mobx/mobx.dart';

part 'calculate_controller.g.dart';

class CalculateController = CalculateControllerBase with _$CalculateController;

abstract class CalculateControllerBase with Store {
  CalculateControllerBase() {
    autorun((_) {
      print(gasoline);
    });
  }

  @observable
  String result = "Insira os valores para realizar o cálculo.";

  @observable
  double? alcohol;

  @action
  void setAlcohol(String value) {
    alcohol = double.parse(value);

    print(alcohol);
  }

  @observable
  double? gasoline;

  @action
  void setGasoline(String value) {
    gasoline = double.parse(value);
  }

  @action
  void submitButton() {}

  @computed
  bool get validationButton {
    if (alcohol == null || gasoline == null) {
      return false;
    } else {
      return true;
    }
  }

  @action
  void calculateFunction() {
    double result = alcohol! / gasoline!;

    if (result < 0.7) {
      this.result = '⛽Álcool - 🟢\n\n⛽Gasolina - 🔴';
    } else {
      this.result = '⛽Álcool - 🔴\n\n⛽Gasolina - 🟢';
    }
  }
}
