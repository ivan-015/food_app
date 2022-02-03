import 'package:bloc/bloc.dart';
import 'package:food_app_comps/bloc/base_food_item_bloc.dart';

class FoodItemBloc extends BaseFoodItemBloc {
  FoodItemBloc() : super();

  /// Method that emits a new state with an added item
  @override
  void onAddFoodItem(AddFoodItem event, Emitter emit) {
    emit(BaseFoodItemState(numberOfItems: state.numberOfItems + 1));
  }

  /// Method that emits a new state with a removed item
  @override
  void onRemoveFoodItem(RemoveFoodItem event, Emitter emit) {
    if (state.numberOfItems > 0) {
      emit(BaseFoodItemState(numberOfItems: state.numberOfItems - 1));
    }
  }
}
