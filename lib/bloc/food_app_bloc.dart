import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app_comps/bloc/base_food_item_bloc.dart';

class FoodAppBloc extends BaseFoodItemBloc {
  FoodAppBloc() : super();

  @override
  void onAddItem(AddFoodItem event, Emitter emit) {
    emit(BaseFoodItemState(numberOfItems: state.numberOfItems + 1));
  }

  @override
  void onRemoveItem(RemoveFoodItem event, Emitter emit) {
    if (state.numberOfItems > 0) {
      emit(BaseFoodItemState(numberOfItems: state.numberOfItems - 1));
    }
  }
}
