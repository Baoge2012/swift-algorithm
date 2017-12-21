/*Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

For example:

 persistence(for: 39) === 3 // because 3*9 = 27, 2*7 = 14, 1*4=4
                       // and 4 has only one digit

 persistence(for: 999) === 4 // because 9*9*9 = 729, 7*2*9 = 126,
                        // 1*2*6 = 12, and finally 1*2 = 2

 persistence(for: 4) === 0 // because 4 is already a one-digit number
 */

func persistence(for num: Int) -> Int {
   
   var count = 0
   
   var sum = num
   while (sum > 10) {
      var target = sum
      var value = target%10
      while(target >  10) {
        target = target / 10
        value *= (target%10)
      }
      sum = value
      count += 1
   }
   return count 
}
