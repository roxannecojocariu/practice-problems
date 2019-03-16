// The new "Avengers" movie has just been released! There are a lot of people at the cinema box office standing in a huge line. Each of them has a single 100, 50 or 25 dollars bill. An "Avengers" ticket costs 25 dollars.
//
// Vasya is currently working as a clerk. He wants to sell a ticket to every single person in this line.
//
// Can Vasya sell a ticket to each person and give the change if he initially has no money and sells the tickets strictly in the order people follow in the line?
//
// Return YES, if Vasya can sell a ticket to each person and give the change with the bills he has at hand at that moment. Otherwise return NO.

let count = 0;
function tickets(peopleInLine){
  let response = '';
  for (i = 0; i < peopleInLine.length; i++){
      console.log(`${count} and ${peopleInLine[i]}`)
    if (peopleInLine[0] === 100 || peopleInLine[0] === 50){
      return "NO";
    } else if (peopleInLine[1] === 100){
      return "NO";
    } else if (peopleInLine[i] === 25) {
      count += 25;
      i++
    }
    if (peopleInLine[i] === 50 && count < 25 || peopleInLine[i] === 100 && count < 75) {
      return "NO";
    }
    if (peopleInLine[i] === 100 && count >= 75 || peopleInLine[i] === 50 && count >= 25) {
      count += 25
      count -= peopleInLine[i];
      response = "YES";
    }
  }
  return response
}

tickets([25,25,25,100,25,25,25,100,25,25,50,100,25,50,25,100,50,50])
