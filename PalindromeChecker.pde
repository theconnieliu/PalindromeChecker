public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(filter(word).equals(reverse(filter(word)))){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length()-1; i >=0; i--){
      sNew = sNew + str.substring(i, i+1);
    }
    return sNew;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String noSpaces(String sWord){
  String word = new String();
  for (int i = 0; i <= sWord.length()-1; i++) {
    if (Character.isLetter(sWord.charAt(i))) {
      word = word + sWord.substring(i, i+1);
    } 
  }
  return word;
}
//public int numLetters(String sString){
//  int numL = 0;
//  for(int i = 0; i < sString.length(); i++) {
//    if (Character.isLetter(sString.charAt(i))) {
//      numL++;
//    }
//  }
//  return numL;
//}
public String onlyLetters(String sString){
  String sNow = new String();
  for (int i = 0; i < sString.length(); i++) {
    if (Character.isLetter(sString.charAt(i))) {
      sNow = sNow + sString.charAt(i);
    }
  }
  return sNow;
}
public String filter(String word){
  word = noCapitals(word);
  word = noSpaces(word);
  word = onlyLetters(word);
  return word;
}