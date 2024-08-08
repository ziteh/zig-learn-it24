const std = @import("std");

const Point = struct {
    x: f32,
    y: f32,
};

pub fn main() void {
    // 賦值
    const p1 = Point{
        .x = 10,
        .y = 123.45,
    };

    // 用 "." 存取成員
    std.debug.print("X: {d}, Y: {d}", .{ p1.x, p1.y });
}
