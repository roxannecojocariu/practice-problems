// Your task is to make two functions, max and min (maximum and minimum in PHP) that take a(n) array/vector of integers list as input and outputs, respectively, the largest and lowest number in that array/vector.

var min = function(list){
    list.sort((a, b) => (a - b))
    return list[0];
}

var max = function(list){
    list.sort((a, b) => (b - a))
    debugger
    return list[0];
}

max([4,6,2,1,9,63,-134,566])
