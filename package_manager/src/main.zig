const std = @import("std");
const zul = @import("zul"); // https://github.com/karlseguin/zul

pub fn main() !void {
    const dt = try zul.DateTime.parse("2028-11-05T23:29:10Z", .rfc3339);
    const unix = dt.unix(.milliseconds);
    std.debug.print("UNIX: {d}\nGMT:  {s}\n", .{ unix, dt });
    std.debug.print("Convert UNIX timestamp to human readable: https://www.unixtimestamp.com", .{});
}
