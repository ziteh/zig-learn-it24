const std = @import("std");

fn my_func(a: u8) bool {
    std.debug.print("Value: {d}\n", .{a});
    return true;
}

pub fn main() !void {
    _ = my_func(100);
}
