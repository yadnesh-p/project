from collections import defaultdict

# Complete the freqQuery function below.
def freqQuery(queries):
    frequency = defaultdict(int)  # To store the frequency of each number
    count_frequency = defaultdict(int)  # To store how many numbers have a certain frequency

    for operation, value in queries:
        print ("freq: ",frequency)
        print ("count:",count_frequency)
        if operation == 1:  # Insert operation
            if frequency[value] > 0:
                count_frequency[frequency[value]] -= 1
            
            frequency[value] += 1
            count_frequency[frequency[value]] += 1
            
        elif operation == 2:  # Delete operation
            if frequency[value] > 0:
                count_frequency[frequency[value]] -= 1
                frequency[value] -= 1
                
                if frequency[value] > 0:
                    count_frequency[frequency[value]] += 1

        elif operation == 3:  # Check frequency operation
            if count_frequency[value] > 0:
                print(1)
            else:
                print(0)

if __name__ == '__main__':
    queries = []
    q = int(input().strip())

    for _ in range(q):
        queries.append(list(map(int, input().rstrip().split())))

    freqQuery(queries)
