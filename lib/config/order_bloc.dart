import 'package:flutter_bloc/flutter_bloc.dart';

enum DeliveryOption { delivery, pickup }

abstract class DeliveryEvent {}

class SelectDelivery extends DeliveryEvent {}

class SelectPickup extends DeliveryEvent {}

class DeliveryState {
  final DeliveryOption selectedOption;

  DeliveryState({required this.selectedOption});
}

class DeliveryBloc extends Bloc<DeliveryEvent, DeliveryState> {
  DeliveryBloc() : super(DeliveryState(selectedOption: DeliveryOption.delivery)) {
    on<SelectDelivery>((event, emit) {
      emit(DeliveryState(selectedOption: DeliveryOption.delivery));
    });

    on<SelectPickup>((event, emit) {
      emit(DeliveryState(selectedOption: DeliveryOption.pickup));
    });
  }
}
