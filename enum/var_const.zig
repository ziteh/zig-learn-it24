const std = @import("std");

const Enum1 = enum {
    var my_var: u8 = 0;
    const my_const: u8 = 100;

    value1,
    value2,
};

pub fn main() void {
    Enum1.my_var += 1;

    std.debug.print("Var: {}\n", .{Enum1.my_var});
    std.debug.print("Const: {}\n", .{Enum1.my_const});
}
