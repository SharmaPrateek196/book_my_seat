import 'package:book_my_seat/src/model/SeatLayoutStateModel.dart';
import 'package:book_my_seat/src/model/SeatModel.dart';
import 'package:book_my_seat/src/utils/seat_state.dart';
import 'package:book_my_seat/src/widgets/SeatWidget.dart';
import 'package:flutter/material.dart';

class SeatLayoutWidget extends StatelessWidget {
  final SeatLayoutStateModel stateModel;
  final void Function(int rowI, int colI, SeatState currentState)
      onSeatStateChanged;

  const SeatLayoutWidget({
    Key? key,
    required this.stateModel,
    required this.onSeatStateChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      maxScale: 5,
      minScale: 0.8,
      boundaryMargin: const EdgeInsets.all(8),
      constrained: true,
      child: Column(
        children: [
          ...List<int>.generate(stateModel.rows, (rowI) => rowI)
              .map<Row>(
                (rowI) => Row(
                  children: [
                    ...List<int>.generate(stateModel.cols, (colI) => colI)
                        .map<SeatWidget>((colI) => SeatWidget(
                              model: SeatModel(
                                seatState: stateModel.currentSeatsState[rowI]
                                    [colI],
                                rowI: rowI,
                                colI: colI,
                                seatSvgSize: stateModel.seatSvgSize,
                                pathSelectedSeat: stateModel.pathSelectedSeat,
                                pathDisabledSeat: stateModel.pathDisabledSeat,
                                pathSoldSeat: stateModel.pathSoldSeat,
                                pathUnSelectedSeat:
                                    stateModel.pathUnSelectedSeat,
                              ),
                              onSeatStateChanged: onSeatStateChanged,
                            ))
                        .toList()
                  ],
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
