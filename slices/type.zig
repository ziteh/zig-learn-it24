const std = @import("std");

pub fn main() void {
    const array = [_]u8{ 1, 2, 3, 4, 5 };
    const slice = array[0..];

    std.debug.print("Array type: {}\n", .{@TypeOf(array)});
    std.debug.print("Slice type: {}  ", .{@TypeOf(slice)});
}
