const std = @import("std");

const Result = union(enum) {
    int: u8,
    boolean: bool,
};

pub fn main() void {
    const res1 = Result{ .int = 32 };
    switch (res1) {
        Result.int => |value| std.debug.print("int: {}\n", .{value}),
        Result.boolean => |value| std.debug.print("boolean: {}\n", .{value}),
    }

    const res2 = Result{ .boolean = false };
    switch (res2) {
        Result.int => |value| std.debug.print("int: {}\n", .{value}),
        Result.boolean => |value| std.debug.print("boolean: {}\n", .{value}),
    }
}
