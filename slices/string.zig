const std = @import("std");

pub fn main() void {
    const arr = "Hello World";
    const arr_type = @TypeOf(arr);
    const length = arr.len;

    std.debug.print("Type: {}, Length: {}\n", .{ arr_type, length });
}
