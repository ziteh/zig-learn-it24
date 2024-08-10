const std = @import("std");

const ResultTag = enum { int, boolean };

const Result = union(ResultTag) {
    int: u8,
    boolean: bool,
};

pub fn main() void {
    const res1 = Result{ .int = 32 };
    switch (res1) {
        ResultTag.int => |value| std.debug.print("int: {}\n", .{value}),
        ResultTag.boolean => |value| std.debug.print("boolean: {}\n", .{value}),
    }

    const res2 = Result{ .boolean = false };
    switch (res2) {
        ResultTag.int => |value| std.debug.print("int: {}\n", .{value}),
        ResultTag.boolean => |value| std.debug.print("boolean: {}\n", .{value}),
    }
}
