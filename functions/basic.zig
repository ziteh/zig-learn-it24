const std = @import("std");

pub fn main() void {
    const value = add(10, 5);
    std.debug.print("Value: {d}", .{value});
}

fn add(a: u8, b: u8) u8 {
    return a + b;
}
