class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    
    if (numbers.contains(',')) {
      return numbers
          .split(',')
          .map((num) => int.parse(num))
          .reduce((sum, num) => sum + num);
    }
    
    return int.parse(numbers);
  }
} 