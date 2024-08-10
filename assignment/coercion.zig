const std = @import("std");

// Type coercion
pub fn main() !void {
    const a: u8 = 5;
    const b = @as(u16, a);
    std.debug.print("Type a: {}\n", .{@TypeOf(a)});
    std.debug.print("Type b: {}\n", .{@TypeOf(b)});
}
