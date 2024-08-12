const std = @import("std");

pub fn main() void {
    var value: ?u8 = null;
    std.debug.print("Value: {?}\n", .{value});

    if (value == null) {
        value = 32;
    }
    std.debug.print("Value: {?}", .{value});
}
