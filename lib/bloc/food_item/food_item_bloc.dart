import 'package:bloc/bloc.dart';
import 'package:food_app_components/bloc/food_item/food_item_bloc.dart';

class FoodItemBloc extends BaseFoodItemBloc {
  FoodItemBloc({
    FoodItemState initialState = const FoodItemState(number: 0),
  }) : super(initialState: initialState);

  /// Method that emits a new state with an added item
  @override
  void onAddFoodItem(AddFoodItem event, Emitter emit) {
    emit(FoodItemState(number: state.number + 1));
  }

  /// Method that emits a new state with a removed item
  @override
  void onRemoveFoodItem(RemoveFoodItem event, Emitter emit) {
    if (state.number > 0) {
      emit(FoodItemState(number: state.number - 1));
    }
  }
}
