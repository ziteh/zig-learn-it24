const std = @import("std");

pub fn main() void {
    const array1 = [_]u8{ 1, 2, 3, 4, 5 };
    do_something(&array1);

    const array2 = [_]u8{ 1, 2, 3, 4, 5, 6, 7, 8 };
    do_something(&array2);

    do_something(array2[2..6]);
}

fn do_something(data: []const u8) void {
    std.debug.print("Value: {}\n", .{data[0]});
    std.debug.print("length: {}\n", .{data.len});
    std.debug.print("Type: {}\n\n", .{@TypeOf(data)});
}
