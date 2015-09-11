class FizzBuzzBazuzz
  def run(max)
    return 'fizzbuzz' if max % 15 == 0
    return 'bazz'     if max % 9  == 0
    return 'buzz'     if max % 5  == 0
    return 'fizz'     if max % 3  == 0
    max
  end
end
