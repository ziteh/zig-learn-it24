const std = @import("std");

const Enum1 = enum {
    value1,
    value2,
    value3,
};

const Enum2 = enum(u8) {
    value1 = 100,
    value2,
    value3,
};

const Enum3 = enum(i8) {
    value1 = -1,
    value2,
    value3,
};

const Enum4 = enum(i8) {
    value1,
    value2 = 100,
    value3,
};

pub fn main() void {
    std.debug.print("Enum1: {}, {}, {}\n", .{
        @intFromEnum(Enum1.value1), @intFromEnum(Enum1.value2), @intFromEnum(Enum1.value3) });

    std.debug.print("Enum2: {}, {}, {}\n", .{
        @intFromEnum(Enum2.value1), @intFromEnum(Enum2.value2), @intFromEnum(Enum2.value3) });

    std.debug.print("Enum3: {}, {}, {}\n", .{
        @intFromEnum(Enum3.value1), @intFromEnum(Enum3.value2), @intFromEnum(Enum3.value3) });

    std.debug.print("Enum4: {}, {}, {}  ", .{
        @intFromEnum(Enum4.value1), @intFromEnum(Enum4.value2), @intFromEnum(Enum4.value3) });
}
