// Write a method that checks whether or not a string is a palindrome. Here is the javascript:

const isPalindrome = (str) => {
  for(let i = 0; i < str.length/2; i++){
    if(str[i] != str[str.length-i-1]){
      return false;
      break;
    }
  }
  return true;
};