const std = @import("std");

const Result = union {
    int: u8,
    boolean: bool,
};

pub fn main() void {
    const res1 = Result{ .int = 32 };
    const res2 = Result{ .boolean = true };
    std.debug.print("Result: {}\n", .{res1.int});
    std.debug.print("Result: {}\n", .{res2.boolean});

    // Error
    // std.debug.print("Result: {}\n", .{res1.boolean});
    // std.debug.print("Result: {}\n", .{res2.int});
}
