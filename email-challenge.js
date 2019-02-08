// Coding Challenge for prospective job:
//
// Every email consists of a local name and a domain name, separated by the @ sign.
//
// For example, in alice@viirtue.com, alice is the local name, and viirtue.com is the domain name.
// Besides lowercase letters, these emails may contain '.'s or '+'s.
// If you add periods ('.') between some characters in the local name part of an email address, mail sent there
// will be forwarded to the same address without dots in the local name. For example,
// "alice.z@viirtue.com" and "alicez@viirtue.com" forward to the same email address. (Note that this rule
// does not apply for domain names.)
// If you add a plus ('+') in the local name, everything after the first plus sign will be ignored. This allows
// certain emails to be filtered, for example m.y+name@email.com will be forwarded to my@email.com.
// (Again, this rule does not apply for domain names.)
// It is possible to use both of these rules at the same time.
// Given a list of emails, we send one email to each address in the list. How many different addresses
// actually receive mails?
// Example:
// Input:
// ["test.email+alex@viirtue.com","test.e.mail+bob.cathy@viirtue.com","testemail+david@lee.tcode.com"]
// Output: 2
// Explanation: "testemail@viirtue.com" and "testemail@lee.tcode.com" actually receive mails
// Note: Each emails[i] contains exactly one '@' character.

function email(emails) {
  let newEmails = [];
  emails.map((email) => {
    var atCharacter = email.indexOf("@");
    for (var i = 0; i < atCharacter; i++) {
      if (email.charAt(i) == ".") {
        let period = email.charAt(i);
        email = email.replace(period, "");
        atCharacter = email.indexOf("@");
      }
      if (email.charAt(i) == "+"){
        let plusCharacter = email.indexOf("+");
        test = email.slice((plusCharacter), (atCharacter));
        email = email.replace(test, "");
        atCharacter = email.indexOf("@");
      }
    }
    newEmails.push(email);
  });

  let total = newEmails.length;
  for (var i=0; i < newEmails.length; i++) {
    for (var j=0; j < i; j++) {
      if (newEmails[i] == newEmails[j])
      total -= 1;
    }
  }
  return total;
}

new email(["test.email+alex@viirtue.com","test.e.mail+bob.cathy@viirtue.com","testemail+david@lee.tcode.com"]);
