const std = @import("std");

pub fn main() !void {
    const a = 100;
    std.debug.print("Value: {d}\n", .{a});
}
