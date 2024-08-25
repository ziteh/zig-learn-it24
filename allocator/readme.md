# Allocators

```bash
$ zig run page.zig
Length: 128
Type: []u8
100, 200
```

```bash
$ zig run fixed.zig
Length: 64
Type: []u8
100, 200
```

```bash
$ zig run general.zig
Length: 128
Type: []u8
100, 200
```

```bash
$ zig run arena.zig
Length: 64, 128, 100
Type: []u8, []f32, []i2
```
