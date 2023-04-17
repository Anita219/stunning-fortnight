defmodule String1test do
  use ExUnit.Case
  doctest String1

  test "hello_name" do
    assert String1.hello_name('Bob') == 'Hello Bob'
    assert String1.hello_name('Alice') == 'Hello Alice'
    assert String1.hello_name('X') == 'Hello X'
  end

  test "make_abba" do
    assert String1.make_abba('Hi', 'Bye') == 'HiByeByeHi'
    assert String1.make_abba('Yo', 'Alice') == 'YoAliceAliceYo'
    assert String1.make_abba('What', 'Up') == 'WhatUpUpWhat'
  end

  test "make_tags" do
    assert String1.make_tags('i', 'Yay') == '<i>Yay</i>'
    assert String1.make_tags('i', 'Hello') == '<i>Hello</i>'
    assert String1.make_tags('cite', 'Yay') == '<cite>Yay</cite>'
  end

  test "make_out_word" do
    assert String1.make_out_word("<<>>", "Yay") == "<<Yay>>"
    assert String1.make_out_word("<<>>", "WooHoo") == "<<WooHoo>>"
    assert String1.make_out_word("[[]]", "word") == "[[word]]"
  end

  test "extra_end" do
    assert String1.extra_end('Hello') == 'lololo'
    assert String1.extra_end('ab') == 'ababab'
    assert String1.extra_end('Hi') == 'HiHiHi'
  end

  test "first_two" do
    assert String1.first_two('Hello') == 'He'
    assert String1.first_two('abcdefg') == 'ab'
    assert String1.first_two('ab') == 'ab'
  end

  test "first_half" do
    assert String1.first_half('WooHoo') == 'Woo'
    assert String1.first_half('HelloThere') == 'Hello'
    assert String1.first_half('abcdef') == 'abc'
  end

  test "without_end" do
    assert String1.without_end("Hello") == "ell"
    assert String1.without_end("java") == "av"
    assert String1.without_end("coding") == "odin"
  end

  test "combo_string" do
    assert String1.combo_string("Hello", "hi") == "hiHellohi"
    assert String1.combo_string("hi", "Hello") == "hiHellohi"
    assert String1.combo_string("b", "aaa") == "baaab"
  end

  test "non_start" do
    assert String1.non_start("Hello", "There") == "ellohere"
    assert String1.non_start("java", "code") == "avaode"
    assert String1.non_start("shotl", "java") == "hotlava"
  end

  test "left2" do
    assert String1.left2("Hello") == "lloHe"
    assert String1.left2("java") == "vaja"
    assert String1.left2("Hi") == "Hi"
  end
end
