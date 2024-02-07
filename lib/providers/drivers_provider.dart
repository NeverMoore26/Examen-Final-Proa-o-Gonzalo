import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movil_wrc_app/responseTypes/drivers_response.dart';

final dioProvider = Provider<Dio>((ref) => Dio());

final getDrivers = FutureProvider.autoDispose((ref) async {
  final dio = ref.watch(dioProvider);

  final response = await dio.get(
    'https://api.wrc.com/content/filters/drivers?championship=wrc&origin=vcms',
  );
  final responseData = response.data;
  return responseData;
});

final getDriversRefresh = FutureProvider.autoDispose((ref) async {
  final dio = ref.watch(dioProvider);

  final response = await dio.get(
    'https://api.wrc.com/content/filters/drivers?championship=wrc&origin=vcms',
  );
  final responseData = response.data;
  return responseData;
});

final getDriversProvider =
    FutureProvider.autoDispose<DriversResponse>((ref) async {
  final dio = ref.watch(dioProvider);

  final response = await dio.get(
    'https://api.wrc.com/content/filters/drivers?championship=wrc&origin=vcms',
  );
  final responseData = response.data;
  final drivers = DriversResponse.fromJson(responseData);

  return drivers;
});

final getDriversRefreshProvider =
    FutureProvider.autoDispose<DriversResponse>((ref) async {
  final dio = ref.watch(dioProvider);

  final response = await dio.get(
    'https://api.wrc.com/content/filters/drivers?championship=wrc&origin=vcms',
  );
  final responseData = response.data;
  final drivers = DriversResponse.fromJson(responseData);

  return drivers;
});
