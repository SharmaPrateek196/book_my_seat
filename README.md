# book_my_seat
This is a flutter package to create seat booking layout for bus, theatre, aeroplane etc. This gives you facility to select a seat by gestures like zoom-in, zoom-out, pan etc.

## Some examples(below is for theatre but you can implement the package for bus etc also)
<img src="https://user-images.githubusercontent.com/47804278/194926012-7e04955d-ca78-44d4-a52b-0e8fc8fbd128.jpg" width="280" height="550">  <text>"     "</text>  <img src="https://user-images.githubusercontent.com/47804278/194926084-bdefd8ae-4145-45da-8b4f-b0cb2c5a1e76.gif" alt="gif"  width="280" height="550" /> 

## Example project and blog for better understanding 🚀
<a href="https://medium.com/@sharmaprateek196/how-to-create-seat-booking-layout-in-flutter-33cff82b3edc">Read my article with example</a>

## Getting Started 🤩
Add this dependency in your pubspec.yaml file
```dart
dependencies:
  book_my_seat: <version number>
```

## How to use ⌨️
#### First, import it:
```dart
import 'package:book_my_seat/book_my_seat.dart';
```

#### Simply create `SeatLayoutWidget` widget and add the required parameters.
Example:
```dart
SeatLayoutWidget(
  onSeatStateChanged: (rowIndex, colIndex, updatedSeatState) {
    print("tapped $rowIndex $colIndex $updatedSeatState");
  },
  stateModel: SeatLayoutStateModel(
    rows: 12,
    cols: 15,
    seatSvgSize: 30,
    pathUnSelectedSeat: 'assets/svg_unselected_bus_seat.svg',
    pathSelectedSeat: 'assets/svg_selected_bus_seat.svg',
    pathSoldSeat: 'assets/svg_sold_bus_seat.svg',
    pathDisabledSeat: 'assets/svg_disabled_bus_seat.svg',
    currentSeatsState: <explained below>,
  ),
)
```

#### Parameters explained:

* `onSeatStateChanged:` - This is a callback method which gets called when user clicks on a seat which has current state equals to either **SeatState.selected** or **SeatState.unselected**.
  The params in this method are:  
  **rowIndex** - the index of the row where this seat is situated  
  **colIndex** - the index of the column where this seat is situated  
  **updatedSeatState** - this is the updated state of the seat after user clicks on the seat. It is an enum of type `SeatState`

* `stateModel:` - It is an object of class **SeatLayoutStateModel** which describes the initial state of the whole layout(maybe bus or aeroplane or theatre). The params in this method are:  
  **rows** - number of rows in the area(I will refer bus/aeroplane/theatre etc as **area** from now onwards)    
  **cols** - number of columns in the area.  
  **seatSvgSize** - size of individual seat   
  **pathUnSelectedSeat, pathSelectedSeat, pathSoldSeat, pathDisabledSeat** - path of the **svg** assets you want to show for unselected(available), selected(by you right now), already sold and disabled(non-choosable) seats respectively   
  **currentSeatsState** - this is the main parameter. It is a 2D list i.e. of type ```List<List<SeatState>>``` (SeatState enum is explained below). This describes the initial state of the area i.e. state of each seat whether it is already sold or unselected(available) or selected by you or disabled(non-selectable).

#### SeatState enum:
It is a dart enum. This describes the current state of individual seat. This currently holds 5 states **unselected, selected, sold, disabled and empty**.   
Brief description of each:
* `unselected` - state when a seat is available and user can select it
* `selected` - state when user has selected an unselected(available) seat (i.e. a seat which had its state == unselected)
* `sold` - state when it is already sold to some other user
* `disabled` - state when a seat is disabled and nobody can select it
* `empty` - state of the cell in 2D area which is an empty place(consider vacant ground) in the bus/theatre/aeroplane etc. This can mimic staircase or aisle or some other place in the area where there are no seats

**NOTE:** User can only click on seats which have state equals to `SeatState.selected` or `SeatState.unselected`.

## Example project and blog for better understanding 🚀
<a href="https://medium.com/@sharmaprateek196/how-to-create-seat-booking-layout-in-flutter-33cff82b3edc">Read my article with example</a>

## Contributors 💻
Prateek Sharma - [Linkedin](https://www.linkedin.com/in/sharmaprateek196/) | [Github](https://github.com/SharmaPrateek196)

## If you like this package, please do a thumbs up on it on pub.dev, give star on github and you can buy me a coffee also 🙏👇

<a href="https://www.buymeacoffee.com/SharmaPrateek" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-red.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>