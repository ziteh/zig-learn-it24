const std = @import("std");
const print = std.debug.print;

const MyIterator = struct {
    list: []const i32,
    exclude: i32,
    index: usize = 0,

    fn next(self: *MyIterator) ?i32 {
        for (self.list[self.index..]) |item| {
            self.index += 1;
            if (item == self.exclude) {
                continue;
            }
            return item;
        }
        return null;
    }
};

pub fn main() void {
    var iter = MyIterator{
        .list = &[_]i32{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 },
        .exclude = 5,
    };

    while (true) {
        const item = iter.next();
        if (item == null) {
            break;
        }
        print("{}\n", .{item.?});
    }
}
