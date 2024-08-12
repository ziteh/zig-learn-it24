const std = @import("std");

pub fn main() void {
    var a: ?u8 = null;
    const b: u8 = 32;
    var c = a orelse b;
    std.debug.print("Value: {}\n", .{c});

    a = 128;
    c = a orelse b;
    std.debug.print("Value: {}\n", .{c});

    std.debug.print("Type: {}", .{@TypeOf(c)});
}
