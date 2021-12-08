part of 'room_sign_in_form_bloc.dart';

@freezed
class RoomSignInFormState with _$RoomSignInFormState {
  const factory RoomSignInFormState({
    required RoomUniqueId roomUniqueId,
    required RoomDefaultName defaultName,
    required RoomTypes roomTypes,
    required RoomDevicesId roomDevicesId,
    required RoomMostUsedBy roomMostUsedBy,
    required RoomPermissions roomPermissions,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = _RoomSignInFormState;

  factory RoomSignInFormState.initial() => RoomSignInFormState(
        roomUniqueId: RoomUniqueId(),
        defaultName: RoomDefaultName(''),
        roomTypes: RoomTypes(const []),
        roomDevicesId: RoomDevicesId(const []),
        roomMostUsedBy: RoomMostUsedBy(const []),
        roomPermissions: RoomPermissions(const []),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
