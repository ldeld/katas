// Write a function that takes in a string of one or more words,
// and returns the same string, but with all five or more letter
// words reversed

function spinWords(string){
  const a = string.split(" ").map((word) => {
    return (word.length > 4 ? word.split("").reverse().join("") : word)
  });
  return a.join(" ");
}

