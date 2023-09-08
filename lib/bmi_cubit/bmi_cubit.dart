import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiInitial());

  String gender = 'male';
  late int wight = 50, age = 15;
  late double hight = 150;

  void operation({required String data, required String opr}) {
    if (data == 'wight' && opr == 'i') {
      wight++;
      emit(BmiData());
    } else if (data == 'wight' && opr == 'd') {
      wight--;
      if (wight == 0) wight = 0;
      emit(BmiData());
    } else if (data == 'age' && opr == 'i') {
      age++;
      emit(BmiData());
    } else {
      age--;
      if (age == 0) age = 0;
      emit(BmiData());
    }
  }

  void getHight(double value) {
    hight = value;
    emit(BmiData());
  }

  double result() {
    double res = wight / ((hight / 100) * (hight / 100));
    return res;
  }
}
