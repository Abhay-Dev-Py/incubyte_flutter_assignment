class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    String delimiter = ',';
    String numbersToProcess = numbers;

    if (numbers.startsWith('//')) {
      delimiter = numbers[2];
      numbersToProcess = numbers.substring(4);
    }
    
    String normalizedNumbers = numbersToProcess.replaceAll('\n', delimiter);
    
    if (normalizedNumbers.contains(delimiter)) {
      return normalizedNumbers
          .split(delimiter)
          .map((num) => int.parse(num))
          .reduce((sum, num) => sum + num);
    }
    
    return int.parse(numbers);
  }
} 