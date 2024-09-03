const print = @import("std").debug.print;

pub fn main() void {
    const target = 5;
    const list = [_]u8{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    var index: u8 = 0;

    // Loop as expression
    const value = while (index < list.len) : (index += 1) {
        if (list[index] == target) {
            break true;
        }
    } else false; // 如果到最後都沒有執行到 break 則會回傳 else 的值

    print("{}", .{value});
}
