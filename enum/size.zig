const std = @import("std");

const Enum1 = enum {
    value1,
    value2,
};

const Enum2 = enum(u16) {
    value1,
    value2,
};

pub fn main() void {
    std.debug.print("Int32: {d} byte\n", .{@sizeOf(i32)});
    std.debug.print("Enum1: {d} byte\n", .{@sizeOf(Enum1)});
    std.debug.print("Enum2: {d} byte\n", .{@sizeOf(Enum2)});
}
