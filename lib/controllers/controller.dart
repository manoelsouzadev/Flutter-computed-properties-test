import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  // var _counter = Observable(0);
  // int get counter => _counter.value;
  // set counter(int newValue) => _counter.value = newValue;

  //Action increment;

  // Controller() {
  //   increment = Action(_increment);
  // }

  // @observable
  // int counter = 0;

  // @action
  // increment() {
  //   counter++;
  // }

  @observable
  String nome = '';

  @observable
  String sobrenome = '';

  @computed
  String get nomeCompleto => "$nome $sobrenome";

  @action
  mudarNome(String novoNome){
    nome = novoNome;
  }

  @action
  mudarSobrenome(String novoSobrenome){
    sobrenome = novoSobrenome;
  }
}
