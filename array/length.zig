const std = @import("std");

pub fn main() void {
    const arr = [_]u8{ 1, 2, 3, 4, 5 };
    const length = arr.len;
    std.debug.print("Length: {}", .{length});
}
