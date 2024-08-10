const std = @import("std");

pub fn main() void {
    const a: u8 = 100;
    const b: u8 = 2;
    const sum: u8 = a + b;

    std.debug.print("Sum: {}", .{sum});
}
