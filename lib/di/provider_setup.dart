import 'package:flutter/cupertino.dart';
import 'package:image_search/data/data_source/pixabay_api.dart';
import 'package:image_search/data/repository/photo_api_repository_impl.dart';
import 'package:image_search/domain/repository/photo_api_repository.dart';
import 'package:image_search/domain/use_case/get_photos_use_case.dart';
import 'package:image_search/presentation/home/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:http/http.dart' as http;

// ==================================================
// Provider : 불변 객체
// ProxyProvider : 변경이 가능 객체
// ChangeNotifierProvider : 이미 생성한 객체에 대한 연결
// ===================================================
// '..' 리스트 안에 리스트를 넣어줄꺼라서

// 1. Provider 전체
List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
  ...viewModels,
];

// 2. 다른 클래스에 의존하지 않는 Model (독립적인 객체)
// => Provider<리턴할 타입>
List<SingleChildWidget> independentModels = [
  Provider<http.Client>(
    create: (BuildContext context,) =>
        http.Client(),
  ),
];

// 3. 2에 등록한 클래스에 의존 하는 Model
// => ProxyProvider<2번에서 이미 생성된 객체 타입, 리턴할 타입>
// => 불변객체가 아닌 변경 가능한 변수를 객체에 전달
List<SingleChildWidget> dependentModels = [
  ProxyProvider<http.Client, PixabayApi>(
    update: (BuildContext context,
        http.Client client,
        PixabayApi? _,) =>
        PixabayApi(client),
  ),
  ProxyProvider<PixabayApi, PhotoApiRepository>(
    update: (BuildContext context,
        PixabayApi api,
        PhotoApiRepository? _,) =>
        PhotoApiRepositoryImpl(api: api),
  ),
  ProxyProvider<PhotoApiRepository, GetPhotosUseCase>(
    update: (BuildContext context,
        PhotoApiRepository repository,
        GetPhotosUseCase? _,) =>
        GetPhotosUseCase(repository: repository),
  ),
];

// 4. ViewModels
// View 가 사용. 2, 3에 등록한 클래스를 사용할 수 있음.
// ChangeNotifierProvider => 이미 생성한 객체에 대해서 연결
List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<HomeViewModel>(
    create: (BuildContext context) =>
        HomeViewModel(context.read<GetPhotosUseCase>()),
  ),
];