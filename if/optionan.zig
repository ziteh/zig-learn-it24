const std = @import("std");

pub fn main() void {
    var a: ?u8 = 32;
    check(a);

    a = null;
    check(a);
}

fn check(a: ?u8) void {
    if (a) |value| { // Capture
        std.debug.print("Value: {}\n", .{value});
    } else {
        std.debug.print("Value: null\n", .{});
    }
}
