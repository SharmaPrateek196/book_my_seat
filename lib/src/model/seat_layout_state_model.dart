import 'package:book_my_seat/src/utils/seat_state.dart';
import 'package:equatable/equatable.dart';

class SeatLayoutStateModel extends Equatable {
  final int rows;
  final int cols;
  final List<List<SeatState>> currentSeatsState;
  final int seatSvgSize;
  final String pathSelectedSeat;
  final String pathUnSelectedSeat;
  final String pathSoldSeat;
  final String pathDisabledSeat;

  const SeatLayoutStateModel({
    required this.rows,
    required this.cols,
    required this.currentSeatsState,
    this.seatSvgSize = 50,
    required this.pathSelectedSeat,
    required this.pathDisabledSeat,
    required this.pathSoldSeat,
    required this.pathUnSelectedSeat,
  });

  @override
  List<Object?> get props => [
        rows,
        cols,
        seatSvgSize,
        currentSeatsState,
        pathUnSelectedSeat,
        pathSelectedSeat,
        pathSoldSeat,
        pathDisabledSeat,
      ];
}
