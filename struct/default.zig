const std = @import("std");

// Default value
const Point = struct {
    x: f32 = 0,
    y: f32 = 100,
};

pub fn main() void {
    const p1 = Point{ .y = 12.5 };
    const p2 = Point{ .x = 245.8 };
    std.debug.print("X: {d}, Y: {d}\n", .{ p1.x, p1.y });
    std.debug.print("X: {d}, Y: {d}  ", .{ p2.x, p2.y });
}
