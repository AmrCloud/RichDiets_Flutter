
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/config/cart_event.dart';
import 'package:food/config/cart_state.dart';

class CartProductBloc extends Bloc<CartProductEvent, CartProductState> {
  CartProductBloc() : super(CartProductState(1)) {
    on<IncrementQuantity>((event, emit) {
      emit(CartProductState(state.quantity + 1));
    });

    on<DecrementQuantity>((event, emit) {
      emit(CartProductState(state.quantity > 1
          ? state.quantity - 1
          : 1)); 
    });
  }
}
