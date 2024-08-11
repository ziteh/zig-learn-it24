# Slices

```bash
$ zig run basic.zig
Slice 1:
  1, 2
  Length: 2

Slice 2:
  Length: 4
```

```bash
$ zig run type.zig
Array type: [5]u8
Slice type: *const [5]u8
```

```bash
$ zig run passing.zig
Value: 1
length: 5
Type: []const u8

Value: 1
length: 8
Type: []const u8

Value: 3
length: 4
Type: []const u8
```

```bash
$ zig run string.zig
Type: *const [11:0]u8, Length: 11
```
