const std = @import("std");

fn my_fun(a: u8) u8 {
    return a * 2;
}

pub fn main() !void {
    const op = my_fun;    // 賦值
    const value = op(6);
    std.debug.print("Value {d}\n", .{value});
}
