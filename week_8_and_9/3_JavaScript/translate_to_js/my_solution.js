// U3.W8-9: Challenge you're converting


// I worked on this challenge [by with Parjam].



// 2. Pseudocode
// translate ruby code for is fibonacci 

// def is_fibonacci?(num)
//   fibs = [0,1]
//   while num > fibs.last 
//     fibs << fibs[-1] + fibs[-2]  
//   end
//   return fibs.include?(num)
// end

// 3. Initial Solution

// var includes = function(array, element) {
//     for (var i=0; i < array.length; i++) {
//         if (array[i]===element){
//             return true;
//         }
//     }
//   return false;
// };

// var is_fibonacci = function(num) {
//     var fibs = [0,1];
//     while (fibs.slice(-1)[0] < num) {
//         fibs.push(fibs.slice(-1)[0] + fibs.slice(-2,-1)[0]);
//     }
//     return fibs.includes(num);
// };


// 4. Refactored Solution

Array.prototype.include = function(element) {
    for (var i=0; i < this.length; i++) {
        if (this[i]===element){
            return true;
        }
    }
  return false;
};

var is_fibonacci = function(num) {
     var fibs = [0,1];
     while (fibs.slice(-1)[0] < num) {
        fibs.push(fibs.slice(-1)[0] + fibs.slice(-2,-1)[0]);
     }
    return fibs.include(num);
};

console.log(is_fibonacci(2));


// 5. Reflection 

//This was a great exercise to translate. We first thought this could be
// translated verbatim with minor tweaks. However we found out that js needed
// some include method. This part was not difficult we build a method on a fly
// for our needs however later when we were refactoring we researched how to create
// Ruby equivalent class methods using prototype. Also we could not find another
// reason why our code was not passing for a long time. When we finally found it 
// it was because javascript did not support negative indices to look for elements.
// So we ended up using slice method and passing in 0 as a index. As a person
// who is not comfortable with js syntax yet, this was a great exercise to get 
// myself more comfident in making my own methods and objects. 