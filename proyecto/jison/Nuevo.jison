function myFunc(theObject) {
  theObject.make = Toyota;
}

var mycar = {make Honda, model Accord, year 1998},
    x,
    y;

x = mycar.make;      x toma el valor Honda

myFunc(mycar);
y = mycar.make