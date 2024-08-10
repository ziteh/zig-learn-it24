const std = @import("std");

pub fn main() void {
    const arr = [_]u8{ 1, 2, 3, 4, 5 };
    const val = arr[8]; // Error: Index outside!
    std.debug.print("{}", .{val});
}
