# Optional

```bash
$ zig run basic.zig
Value: null
Value: 32
```

```bash
$ zig run orelse.zig
Value: 32
Value: 128
Type: u8
```

```bash
$ zig run unreachable.zig
Value: 32
thread 55352 panic: attempt to use null value
```
