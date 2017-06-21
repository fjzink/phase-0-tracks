var colors = ["blue", "green", "orange", "yellow"]
var horses = ["Ed", "Freddy", "Teddy", "Flow"]

colors.push("purple")
horses.push("Jerry")

console.log(colors)
console.log (horses)

//We need to assign colors to horses. In data_structures.js, add code that will use your two arrays to create an object. The keys of your object should be horse names, and the values should be colors. Your solution should be something that would work for any number of colors/horses, as long as the two arrays are the same length. This is a logical reasoning step -- try to think it through instead of Googling it.

//conditional check lengths are equal
//function js

function horse_color(horses, color){
  horseColors = {};
  if (colors.length === horses.length){
      for (var i = 0; i < horses.length; i++)
        horseColors[horses[i]] = color[i];

} else {
  console.log("the arrays are not the same length")
}
  return horseColors
}
console.log(horse_color(horses,colors))

function Car(color, speed, model) {
	this.color = color;
	this.speed = speed;
	this.model = model;

	this.start = function() {console.log("Vroom!!!");};
}

var hondaCar = new Car("red", 100, "Civic");
console.log(hondaCar);
hondaCar.start();

var ferrariCar = new Car("yellow", 200, "458");
console.log(ferrariCar);
ferrariCar.start();

var fordCar = new Car("green", 110, "Focus");
console.log(fordCar);
fordCar.start();