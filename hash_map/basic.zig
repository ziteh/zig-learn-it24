const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();

    const allocator = gpa.allocator();
    var map = std.AutoHashMap(u8, []const u8).init(allocator);
    defer map.deinit();

    // Insert
    try map.put(0, "Zero");
    try map.put(1, "One");
    try map.put(2, "Two");

    const value = map.get(1);
    if (value) |v| {
        print("{s}", .{v});
    }
}
