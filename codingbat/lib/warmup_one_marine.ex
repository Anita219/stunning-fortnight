defmodule WarmupOneMarine do
  # hier deine Methoden einfügen :)
  def sleep_in(weekday, vacation) do
    cond do
      not weekday or vacation -> true
      true -> false
    end
  end

  def monkey_trouble(a_smile, b_smile) do
    cond do
      a_smile and b_smile -> true
      not a_smile and not b_smile -> true
      true -> false
    end
  end

  def sum_double(a,b) do
    cond do
      a ==b -> 2* (a+b)
      true -> a + b
    end
  end

  def parrot_trouble(talking, hour) do
    cond do
      not(talking) -> false
      (hour<7) or (hour>20) -> true
      true -> false
    end
  end

  def makes10(a,b) do
    cond do
      a+b==10 -> true
      a== 10 or b ==10-> true
      true -> false
    end
  end

  #question: what is more readable: like this or with cond ?
  def near_hundred(n) do
    distance100 = abs(100-n)
    distance200 = abs(200-n)
    cond do
      (distance100<=10) or (distance200<=10) -> true
      true -> false
    end
  end

  def pos_neg(a,b,negative) do
    cond do
      !negative && ((a<0 && b>=0) || (a>=0 && b<0))-> true
      negative && (a<0 && b<0) -> true
      true -> false
    end
  end



  #def not_string(str) do
  #  try do
  #    [a,b] = str.split
  #  rescue

  #  is_not = (String.slice(str,0..3) =="not ")
  #  if(is_not) do
  #    str
  #  end
  #  else do
  #    "not " <> str
  #  end
  #end


end
