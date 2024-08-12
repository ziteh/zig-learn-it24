const std = @import("std");

pub fn main() void {
    var a: ?u8 = 32;
    var c = a.?;
    std.debug.print("Value: {}\n", .{c});

    a = null;
    c = a.?; // painc!
    std.debug.print("Value: {}\n", .{c});
}
