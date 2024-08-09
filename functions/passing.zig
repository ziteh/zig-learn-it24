const std = @import("std");

fn add(a: u8, b: u8) u8 {
    return a + b;
}

fn sub(a: u8, b: u8) u8 {
    return a - b;
}

fn do_something(a: u8, b: u8, op: fn (u8, u8) u8) u8 {
    return op(a, b);
}

pub fn main() !void {
    const val1 = do_something(10, 2, add);
    const val2 = do_something(10, 2, sub);
    std.debug.print("Value1: {d}, Value2: {d}\n", .{ val1, val2 });
}
