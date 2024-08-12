const std = @import("std");

pub fn main() void {
    var var_value: u8 = 32;
    const const_ptr = &var_value;
    std.debug.print("Value: {}\n", .{const_ptr.*});

    const_ptr.* += 100; // Modify value (value is var)
    std.debug.print("Value: {}\n", .{const_ptr.*});

    std.debug.print("-----\n", .{});

    const const_value: u8 = 32;
    var var_ptr = &const_value;
    std.debug.print("Value: {}\n", .{var_ptr.*});

    var_ptr = &var_value; // Modify pointer (pointer is var)
    std.debug.print("Value: {}\n", .{var_ptr.*});
}
