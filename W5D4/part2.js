function fizzBuzz(array) {
  const retArray = []

  array.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      retArray.push(el);
    }
  });
  return retArray;
}
