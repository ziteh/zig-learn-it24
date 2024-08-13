const std = @import("std");

pub fn main() void {
    const a: u8 = 32;
    const b: u8 = 128;

    const c = if (a > b) "A" else "B";

    std.debug.print("{s}", .{c});
}
