const std = @import("std");

pub fn main() void {
    // Ok
    if (true) {
        std.debug.print("Ok", .{});
    }

    // Ok
    if (1 != 0) {
        std.debug.print("Ok", .{});
    }

    // Error
    // if (1) {
    //     std.debug.print("Ok", .{});
    // }
}
