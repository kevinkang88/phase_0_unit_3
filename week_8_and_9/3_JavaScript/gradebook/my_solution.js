/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge [by myself, with:]

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"];

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ];



// __________________________________________
// Write your code below.

// var average = function(ary) {
//   var sum = 0;
//   for (var i = 0; i < ary.length;i++) {
//     sum = sum + ary[i];
//   }
//   var avg = sum / ary.length;
//   return avg; 
// };

// var gradebook = {
//   Joseph:{testScore:scores[0]},
//   Susan:{testScore:scores[1]},
//   William:{testScore:scores[2]},
//   Elizabeth:{testScore:scores[3]},
//   addScore:function(stu_name,grade) {
//     gradebook[stu_name].testScore.push(grade);
//   },
//   getAverage:function(stu_name) {
//     return average(gradebook[stu_name].testScore);
//   }
// };


// __________________________________________
// Refactored Solution

var average = function(ary) {
  var sum = 0;
  for (var i = 0; i < ary.length;i++) {
    sum = sum + ary[i];
  }
  var avg = sum / ary.length;
  return avg; 
};

var gradebook = {
  Joseph:{testScores:scores[0]},
  Susan:{testScores:scores[1]},
  William:{testScores:scores[2]},
  Elizabeth:{testScores:scores[3]},
  addScore:function(stu_name,grade) {
    gradebook[stu_name].testScores.push(grade);
  },
  getAverage:function(stu_name) {
    return average(gradebook[stu_name].testScores);
  }
};




// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)


// __________________________________________
// Reflect

This exercise made me realize how rusty I was with js even after being away from it for few weeks. 
I knew exactly what I wanted the program to do, however I spent a lot of time going back to previous 
exercises and w3schools website to reference trivial syntactic rules for js. When I was writing 
addScore object function, I chained dot methods to access my array which gave me an error.

    gradebook.stu_name.testScores

I learned that dealing with dynamic variables in js, you must use bracket notation instead of dot 
notation. All in all it should have been a much quicker exercise but learned a lot along the way. 
 