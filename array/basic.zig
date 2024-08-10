const std = @import("std");

pub fn main() void {
    const arr1 = [_]u8{ 1, 2, 3, 4, 5 };
    const arr2 = [5]u8{ 1, 2, 3, 4, 5 };
    const arr3: [5]u8 = .{ 1, 2, 3, 4, 5 };

    std.debug.print("{}, {}, {}\n", .{ arr1[0], arr2[0], arr3[0] });
}
