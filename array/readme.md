# Array

```bash
$ zig run basic.zig
1, 1, 1
```

```bash
$ zig run length.zig
Length: 5
```

```bash
$ zig run assignment.zig
100
```

```bash
$ zig run outside.zig
outside.zig:5:21: error: index 8 outside array of length 5
    const val = arr[8]; // Error: Index outside!
```

```bash
$ zig run string.zig
Type: *const [11:0]u8, Length: 11
```
