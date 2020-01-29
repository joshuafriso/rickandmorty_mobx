import 'package:mobx/mobx.dart';
import 'package:rickandmorty_mobx/services/api_service.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  ApiService _api = ApiService();

  @observable
  ObservableFuture<List> response = ObservableFuture.value(null);

  @observable
  ObservableList itens = ObservableList.of([]);

  @computed
  bool get loading => response.status == FutureStatus.pending;

  @action
  void getData() {
    response = _api.getData().asObservable()
      ..then((e) {
        itens.addAll(e);
      });
  }
}
