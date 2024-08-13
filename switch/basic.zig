const print = @import("std").debug.print;

pub fn main() void {
    const http_code: u16 = 404;

    print("Statue: ", .{});
    switch (http_code) {
        400 => {
            print("Bad Request", .{});
        },
        403 => {
            print("Forbidden", .{});
        },
        404 => {
            print("Not Found", .{});
        },
        418 => {
            print("I'm a teapot", .{});
        },
        else => {
            @panic("Unknown");
        },
    }
}
