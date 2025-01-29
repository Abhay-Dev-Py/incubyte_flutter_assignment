class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    
    String normalizedNumbers = numbers.replaceAll('\n', ',');
    
    if (normalizedNumbers.contains(',')) {
      return normalizedNumbers
          .split(',')
          .map((num) => int.parse(num))
          .reduce((sum, num) => sum + num);
    }
    
    return int.parse(numbers);
  }
} 