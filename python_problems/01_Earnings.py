from collections import Counter

No_Shoes = int(input())

shoe = Counter(list(map(int,input().split())))

No_Customers = int(input())

Tsum=0

for i in range(No_Customers):

    Customer = [int(i) for i in input().split()]

    if Customer[0] in shoe.keys() and shoe[Customer[0]] > 0 :
        Tsum+=Customer[1]
        shoe[Customer[0]]-=1
    print(Tsum)