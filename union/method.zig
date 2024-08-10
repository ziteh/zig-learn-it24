const std = @import("std");

const Result = union(enum) {
    int: u8,
    boolean: bool,

    pub fn print(self: Result) void {
        switch (self) {
            Result.int => |value| std.debug.print("int: {}\n", .{value}),
            Result.boolean => |value| std.debug.print("boolean: {}\n", .{value}),
        }
    }
};

pub fn main() void {
    const res1 = Result{ .int = 32 };
    res1.print();

    const res2 = Result{ .boolean = true };
    res2.print();
}
