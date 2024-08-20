const print = @import("std").debug.print;

pub fn main() void {
    const arr = [_]i8{ 1, 2, 3 };
    const vec: @Vector(3, i8) = arr;
    print("{}, {}, {}", .{ vec[0], vec[1], vec[2] });
}
