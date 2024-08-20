const print = @import("std").debug.print;

pub fn main() void {
    const a: @Vector(3, i8) = .{ 1, 1, 5 };
    const b: @Vector(3, i8) = .{ 2, 5, -10 };
    const c = a * b;
    print("{}, {}, {}", .{ c[0], c[1], c[2] });
}
