// # Once upon a time, on a way through the old wild west,…
// # … a man was given directions to go from one point to another. The directions were "NORTH", "SOUTH", "WEST", "EAST". Clearly "NORTH" and "SOUTH" are opposite, "WEST" and "EAST" too. Going to one direction and coming back the opposite direction is a needless effort. Since this is the wild west, with dreadfull weather and not much water, it's important to save yourself some energy, otherwise you might die of thirst!
// #
// # How I crossed the desert the smart way.
// # The directions given to the man are, for example, the following:
// #
// # ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].
// #
// # You can immediatly see that going "NORTH" and then "SOUTH" is not reasonable, better stay to the same place! So the task is to give to the man a simplified version of the plan. A better plan in this case is simply:
// #
// # ["WEST"]
// #
// # Other examples:
// # In ["NORTH", "SOUTH", "EAST", "WEST"], the direction "NORTH" + "SOUTH" is going north and coming back right away. What a waste of time! Better to do nothing.
// #
// # The path becomes ["EAST", "WEST"], now "EAST" and "WEST" annihilate each other, therefore, the final result is [] (nil in Clojure).
// #
// # In ["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"], "NORTH" and "SOUTH" are not directly opposite but they become directly opposite after the reduction of "EAST" and "WEST" so the whole path is reducible to ["WEST", "WEST"].
// #
// # Task
// # Write a function dirReduc which will take an array of strings and returns an array of strings with the needless directions removed (W<->E or S<->N side by side).

function dirReduc(arr){
  function sift_through(arr) {
    for (i = 0; i < arr.length; i++){
      if (arr[i] === "NORTH" && arr[i + 1] === "SOUTH" || arr[i] === "SOUTH" && arr[i + 1] === "NORTH" || arr[i] === "WEST" && arr[i + 1] === "EAST" || arr[i] === "EAST" && arr[i + 1] === "WEST"){
        delete arr[i + 1]
        delete arr[i]
      }
    }
    return arr
  }
  sift_through(arr)
  arr = arr.filter(Boolean)
  for (i = 0; i < arr.length; i++) {
    sift_through(arr)
  }
  arr = arr.filter(Boolean)
  return arr
}

dirReduc(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"])
