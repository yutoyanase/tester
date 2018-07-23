
def tsp(d):
    n = len(d)
    # DP[A] = {v: value}
    DP = dict()
    
    for A in range(1, 1 << n):
        if A & 1 << 0 == 0:
            continue
        if A not in DP:
            DP[A] = dict()
    
        # main
        for v in range(n):
            if A & 1 << v == 0:
                if A == 1 << 0:
                    DP[A][v] = d[0][v] if d[0][v] > 0 else float('inf')
                else:
                    DP[A][v] = min([DP[A ^ 1 << u][u] + d[u][v] for u in range(n)
                                    if u != 0 and A & 1 << u != 0 and d[u][v] > 0]
                                   + [float('inf')])

V = 1 << n
    DP[V] = dict()
    DP[V][0] = min([DP[A ^ 1 << u][u] + d[u][0] for u in range(n)
                    if u != 0 and A & 1 << u != 0 and d[u][0] > 0]
                   + [float('inf')])
                   
                   
    return DP[V][0]

# comments
# comments

if __name__ == '__main__':
    data = [ [-1, 3, -1, 4, -1],
            [-1, -1, 5, -1, -1],
            [4, -1, -1, 5, -1],
            [-1, -1, -1, -1, 3],
            [7, 6, -1, -1, -1]
            ]
            res = tsp(data)
            print(res)
