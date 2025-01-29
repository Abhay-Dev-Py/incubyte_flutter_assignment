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
      List<int> nums = normalizedNumbers
          .split(delimiter)
          .map((num) => int.parse(num))
          .toList();
          
      List<int> negativeNumbers = nums.where((n) => n < 0).toList();
      if (negativeNumbers.isNotEmpty) {
        throw ArgumentError('negative numbers not allowed: ${negativeNumbers.join(", ")}');
      }
      
      return nums.reduce((sum, num) => sum + num);
    }
    
    int number = int.parse(numbers);
    if (number < 0) {
      throw ArgumentError('negative numbers not allowed: $number');
    }
    return number;
  }
} 