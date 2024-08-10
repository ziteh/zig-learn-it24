const std = @import("std");

const Result = union(enum) {
    int: u8,
    boolean: bool,
};

pub fn main() void {
    std.debug.print("Name: {s}\n", .{@tagName(Result.int)});
}
