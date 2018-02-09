function divisors(integer) {
  div_array = [];
  for (i = 2; i < integer; i++) {
    if (integer % i == 0) { div_array.push(i) }
  }
  return (div_array.length != 0 ? div_array : `${integer} is prime`)
};

console.log(divisors(739523));
