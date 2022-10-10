/// current state of a seat
enum SeatState {
  /// current user selected this seat
  selected,

  /// current user has not selected this seat yet,
  /// but it is available to be booked
  unselected,

  /// this seat is already sold to other user
  sold,

  /// this seat is disabled to be booked for some reason
  disabled,

  /// empty area e.g. aisle, staircase etc
  empty,
}
