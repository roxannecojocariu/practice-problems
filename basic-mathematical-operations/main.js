// Your task is to create a function that does four basic mathematical operations.
//
// The function should take three arguments - operation(string/char), value1(number), value2(number).
// The function should return result of numbers after applying the chosen operation.

function basicOp(operation, value1, value2)
{
  let sum;
  if (operation === '+'){
    sum = value1 + value2
  } else if (operation === '-') {
    sum = value1 - value2
  } else if (operation === '*') {
    sum = value1 * value2
  } else if (operation === '/') {
    sum = value1 / value2
  }
  return sum;
}
