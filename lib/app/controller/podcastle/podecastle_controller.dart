import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:podcastle/app/data/model/model.dart';
import 'package:podcastle/app/data/repository/podcast_repository.dart';

class PodcastleController extends GetxController {

  final MyRepository repository;
  PodcastleController({@required this.repository}) : assert(repository != null);

  final _post = MyModel().obs;
  get post => this._post.value;
  set post(value) => this._post.value = value;


  editar(post){
    print('editar');
  }
  delete(id){
    print('deletar');
  }
}