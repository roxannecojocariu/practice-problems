// Given two integers a and b, which can be positive or negative, find the sum of all the numbers between including them too and return it. If the two numbers are equal return a or b.
//
// Note: a and b are not ordered!
//
// Examples
// GetSum(1, 0) == 1   // 1 + 0 = 1
// GetSum(1, 2) == 3   // 1 + 2 = 3
// GetSum(0, 1) == 1   // 0 + 1 = 1

function GetSum(a,b){
  let maxNumber = Math.max(a,b);
  let minNumber = Math.min(a,b);
  let total = 0;
  for (var i = minNumber; i <= maxNumber; i++){
    total += i;
  }
  return total;
}
