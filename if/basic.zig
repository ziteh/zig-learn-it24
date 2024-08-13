const std = @import("std");

pub fn main() void {
    const a: u8 = 32;
    const b: u8 = 128;

    if (a > b) {
        std.debug.print("A", .{});
    } else if (a < b) {
        std.debug.print("B", .{});
    } else {
        std.debug.print("eq", .{});
    }
}
