#!/bin/python3
import os

def activityNotifications(expenditure, d):
    # Create a frequency array for the expenditures
    freq = [0] * 201  # Since expenditure values are between 0 and 200
    for i in range(d):
        freq[expenditure[i]] += 1

    count = 0
    
    # Function to find the median based on the frequency array
    def get_median():
        total = 0
        for i in range(201):
            total += freq[i]
            if d % 2 == 1:  # d is odd
                if total > d // 2:
                    return i
            else:  # d is even
                if total >= d // 2 and (total - freq[i]) < d // 2:
                    return (i + (i if total >= (d // 2 + 1) else (i + 1))) / 2

    for i in range(d, len(expenditure)):
        median = get_median()
        
        # Check if current expenditure is greater than or equal to 2 * median
        if expenditure[i] >= 2 * median:
            count += 1
        
        # Update the frequency array
        freq[expenditure[i]] += 1
        freq[expenditure[i - d]] -= 1

    return count

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    first_multiple_input = input().rstrip().split()
    n = int(first_multiple_input[0])
    d = int(first_multiple_input[1])
    expenditure = list(map(int, input().rstrip().split()))

    result = activityNotifications(expenditure, d)
    fptr.write(str(result) + '\n')
    fptr.close()
