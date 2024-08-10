const std = @import("std");

pub fn main() void {
    var arr = [_]u8{ 1, 2, 3, 4, 5 };
    arr[1] = 100;
    std.debug.print("{}", .{arr[1]});
}
