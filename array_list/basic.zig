const std = @import("std");
const print = std.debug.print;
const ArrayList = std.ArrayList;

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();

    const allocator = gpa.allocator();
    var list = ArrayList(i8).init(allocator);
    defer list.deinit();

    try list.append(1);
    try list.append(2);
    try list.append(-3);

    print("{}, {}, {}\n", .{ list.items[0], list.items[1], list.items[2] });
}
