const std = @import("std");

const Point = struct {
    x: f32,
    y: f32,
    pub fn init(x: f32, y: f32) Point {
        return Point{ .x = x, .y = y };
    }
};

// Complex
const Line = struct {
    p1: Point,
    p2: Point,
};

pub fn main() void {
    const l1 = Line{
        .p1 = Point.init(10, 12.5),
        .p2 = Point.init(20.2, 110),
    };
    std.debug.print("X: {d}, Y: {d}\n", .{ l1.p1.x, l1.p1.y });
    std.debug.print("X: {d}, Y: {d}  ", .{ l1.p2.x, l1.p2.y });
}
