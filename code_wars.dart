
/*Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

Examples:

* 'abc' =>  ['ab', 'c_']
* 'abcdef' => ['ab', 'cd', 'ef']
*/





List<String> splitIntoPairs(String str) {
  List<String> pairs = [];
  
  // Loop through the string in steps of 2
  for (int i = 0; i < str.length; i += 2) {
    // Check if there is a next character
    if (i + 1 < str.length) {
      pairs.add(str[i] + str[i + 1]);
    } else {
      // If not, add the last character and an underscore
      pairs.add(str[i] + '_');
    }
  }
  
  return pairs;
}

void main() {
  String input = "abcde"; // Example input
  List<String> result = splitIntoPairs(input);
  
  print(result); // Output: [ab, cd, e_]
}
