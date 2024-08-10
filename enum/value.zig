const std = @import("std");

const HttpCode = enum(u16) {
    bad_request = 400,
    forbidden = 403,
    not_found = 404,
    im_a_teapot = 418,
};

pub fn main() void {
    const status = HttpCode.not_found;

    if (@intFromEnum(status) == 404) {
        std.debug.print("Ok", .{});
    }
}
