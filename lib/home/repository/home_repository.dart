
import '../service/base/home_service_base.dart';
import '../service/home_service.dart';

class HomeRepository with HomeServiceBase {
  final HomeService _homeService;

  HomeRepository(this._homeService) : assert(_homeService != null);
}
