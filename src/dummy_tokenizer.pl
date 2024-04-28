% Sample Program 1
dummy_tokenize('begin z := 1; for i := 0; not i = 3; i := i + 1 do z := z * 2 endfor; print(z) end.', 
        [begin, z, :=, 1, ;, for, i, :=, 0, ;, not, i, =, 3, ;, i, :=, i, +, 1, do, z, :=, z, *, 2, endfor, ;, print, '(', z, ')', end, .]).

% Sample Program 2
dummy_tokenize('begin i := 2; z := 9; while not i = 0 do z := z / 3; i := i - 1; endwhile; print(z) end.', 
        [begin, i, :=, 2, ;, z, :=, 9, ;, while, not, i, =, 0, do, z, :=, z, /, 3, ;, i, :=, i, -, 1, endwhile, ;, print, '(', z, ')', end, .]).

% Sample Program 3
dummy_tokenize('begin z := "hello"; for i in range(1,5) do print(z) endfor end.', 
        [begin, z, :=, '"', hello, '"', ;, for, i, in, range, '(', 1, ',', 5, ')', do, print, '(', z, ')', endfor, end, .]).

% Sample Program 4
dummy_tokenize('begin x := 1; z := x; x = 1 and z = 1 ? print("hello") : print("goodbye") endtern end.',
        [begin, x, :=, 1, ;, z, :=, x, ;, x, =, 1, and, z, =, 1, ?, print, '(', '"', hello, '"', ')', :, print, '(', '"', goodbye, '"', ')', endtern, end, .]).

% Sample Program 5
dummy_tokenize('begin x := 0; y := 1; if x = 1 or y = 1 then z := 1 else z := 0 endif; print(z) end.', 
        [begin, x, :=, 0, ;, y, :=, 1, ;, if, x, =, 1, or, y, =, 1, then, z, :=, 1, else, z, :=, 0, endif, ;, print, '(', z, ')', end, .]).