public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(isPalindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else if(isPalindrome(checker(lines[i])) == true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean isPalindrome(String sWord){
  String yes = "";
  for(int i = sWord.length()-1;i>=0;i--)
    yes += sWord.substring(i,i+1);
  if(sWord.equals(yes))
    return true;
  return false;
}

public String reverse(String sWord){
  String yes = "";
  for(int i = sWord.length()-1;i>=0;i--)
    yes += sWord.substring(i,i+1);
  return yes;
}
public String checker(String sWord){
  String yes = "";
  String word = "";
  for(int i = 0;i<sWord.length();i++)
    if(Character.isLetter(sWord.charAt(i)))
      yes += sWord.charAt(i);
  for(int i = 0;i<yes.length();i++)
    if(yes.charAt(i) != ' ')
      word += yes.charAt(i);
  return word.toLowerCase();
  
}
