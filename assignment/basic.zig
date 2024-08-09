const std = @import("std");

pub fn main() !void {
    // var a: u8;           // 這行會導致編譯錯誤
    var a: u8 = undefined; // 這是對的

    a = 100;
    std.debug.print("Value: {d}\n", .{a});
}
