public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}


public boolean palindrome(String word)
{
  if(onlyLetters(word).equals(reverse(onlyLetters(word))))
    return true;
  return false;
  }
  



public String reverse(String str)
{
    String s = new String();
  int last = str.length() - 1;
  for(int i = last; i >= 0; i--)
  {
    s = s + str.substring(i,i+1);
}
  return s;
}




public String onlyLetters(String str)
{
  String ok = new String();
  for(int i = 0; i < str.length(); i++)
  {
    if(Character.isLetter(str.charAt(i)))
        ok = ok + str.substring(i,i+1);
  }
String bruh = "";
for(int i = 0; i < ok.length();i++)
  {
    if(ok.charAt(i) != ' ')
      {
        bruh = bruh + ok.charAt(i);
      }
  }
  bruh = bruh.toLowerCase();
  return bruh;
}
