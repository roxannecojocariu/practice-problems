// if count == neg return no else return yes

let count = 0;
function tickets(peopleInLine){
  let response = '';
  for (i = 0; i < peopleInLine.length; i++){
    if (peopleInLine[0] === 100 || peopleInLine[0] === 50){
      return "NO";
    } else if (peopleInLine[1] === 100){
      return "NO";
    } else if (peopleInLine[i] === 25) {
      count += 25;
      i++
    }
      count += 25
      count -= peopleInLine[i]
      if (count < 0 && peopleInLine[i + 1] != nil){
        return "NO"
      } else {
      return "YES"
    }
  }
}
