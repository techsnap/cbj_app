import 'dart:async';
import 'dart:convert';

import 'package:cybear_jinni/domain/room/i_room_repository.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/domain/room/room_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/hub_client/hub_client.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/src/painting/colors.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IRoomRepository)
class RoomRepository implements IRoomRepository {
  @override
  void addOrUpdateRoom(RoomEntity roomEntity) {
    // TODO: implement addOrUpdateRoom
  }

  @override
  void addOrUpdateRoomAndStateToWaiting(RoomEntity roomEntity) {
    // TODO: implement addOrUpdateRoomAndStateToWaiting
  }

  @override
  Future<Either<RoomFailure, Unit>> changeBrightnessRooms({
    required List<String>? roomsId,
    required int brightnessToChange,
  }) async {
    // TODO: implement changeBrightnessRooms
    throw UnimplementedError();
  }

  @override
  Future<Either<RoomFailure, Unit>> changeColorTemperatureRooms({
    required List<String>? roomsId,
    required int colorTemperatureToChange,
  }) async {
    // TODO: implement changeColorTemperatureRooms
    throw UnimplementedError();
  }

  @override
  Future<Either<RoomFailure, Unit>> changeHsvColorRooms({
    required List<String>? roomsId,
    required HSVColor hsvColorToChange,
  }) async {
    // TODO: implement changeHsvColorRooms
    throw UnimplementedError();
  }

  @override
  Future<Either<RoomFailure, Unit>> create(RoomEntity roomEntity) async {
    final String roomAsJsonString =
        jsonEncode(roomEntity.toInfrastructure().toJson());

    final ClientStatusRequests clientStatusRequests = ClientStatusRequests(
      sendingType: SendingType.roomType,
      allRemoteCommands: roomAsJsonString,
    );

    AppRequestsToHub.appRequestsToHubStreamController.sink
        .add(clientStatusRequests);

    return right(unit);
  }

  @override
  Future<Either<RoomFailure, Unit>> delete(RoomEntity roomEntity) async {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<RoomFailure, KtList<RoomEntity?>>> getAllRooms() async {
    // TODO: implement getAllRooms
    throw UnimplementedError();
  }

  @override
  Future<void> initiateHubConnection() async {
    // TODO: implement initiateHubConnection
    throw UnimplementedError();
  }

  @override
  Future<Either<RoomFailure, Unit>> moveDownBlinds({
    required List<String>? roomsId,
  }) async {
    // TODO: implement moveDownBlinds
    throw UnimplementedError();
  }

  @override
  Future<Either<RoomFailure, Unit>> moveUpBlinds({
    required List<String>? roomsId,
  }) async {
    // TODO: implement moveUpBlinds
    throw UnimplementedError();
  }

  @override
  Future<Either<RoomFailure, Unit>> stopBlinds({
    required List<String>? roomsId,
  }) async {
    // TODO: implement stopBlinds
    throw UnimplementedError();
  }

  @override
  Future<Either<RoomFailure, Unit>> turnOffAllInRooms({
    required List<String>? roomsId,
  }) async {
    // TODO: implement turnOffAllInRooms
    throw UnimplementedError();
  }

  @override
  Future<Either<RoomFailure, Unit>> turnOnAllInRooms({
    required List<String>? roomsId,
  }) async {
    // TODO: implement turnOnAllInRooms
    throw UnimplementedError();
  }

  @override
  Future<Either<RoomFailure, Unit>> updateDatabase(
      {required Map<String, dynamic> documentPath,
      required Map<String, dynamic> fieldsToUpdate}) async {
    // TODO: implement updateDatabase
    throw UnimplementedError();
  }

  @override
  Future<Either<RoomFailure, Unit>> updateWithRoomEntity({
    required RoomEntity roomEntity,
  }) async {
    // TODO: implement updateWithRoomEntity
    throw UnimplementedError();
  }

  @override
  Stream<Either<dynamic, KtList>> watchAll() async* {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

  @override
  Stream<Either<RoomFailure, KtList<RoomEntity?>>> watchAllRooms() async* {
    // TODO: implement watchAllRooms
    throw UnimplementedError();
  }

  @override
  Stream<Either<RoomFailure, KtList<RoomEntity?>>> watchBlinds() async* {
    // TODO: implement watchBlinds
    throw UnimplementedError();
  }

  @override
  Stream<Either<RoomFailure, KtList<RoomEntity?>>> watchBoilers() async* {
    // TODO: implement watchBoilers
    throw UnimplementedError();
  }

  @override
  Stream<Either<RoomFailure, KtList<RoomEntity?>>> watchLights() async* {
    // TODO: implement watchLights
    throw UnimplementedError();
  }

  @override
  Stream<Either<RoomFailure, KtList<RoomEntity?>>> watchSmartTv() async* {
    // TODO: implement watchSmartTv
    throw UnimplementedError();
  }

  @override
  Stream<Either<RoomFailure, KtList<RoomEntity?>>> watchSwitches() async* {
    // TODO: implement watchSwitches
    throw UnimplementedError();
  }

  @override
  Stream<Either<RoomFailure, KtList<RoomEntity?>>> watchUncompleted() async* {
    // TODO: implement watchUncompleted
    throw UnimplementedError();
  }

  /// Stream controller of the app request for the hub
  @override
  BehaviorSubject<KtList> allResponseFromTheHubStreamController =
      BehaviorSubject<KtList>();

  @override
  BehaviorSubject<KtList<RoomEntity>> roomsResponseFromTheHubStreamController =
      BehaviorSubject<KtList<RoomEntity>>();
}
