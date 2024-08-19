const print = @import("std").debug.print;

const BitField = packed struct {
    bit0: u1,
    bit1: u1,
    bit2: u1,
    bit3: u1,
    bit4: u1,
    bit5: u1,
    bit6: u1,
    bit7: u1,
};

const Register = union {
    bits: BitField,
    byte: u8,
};

pub fn main() void {
    const bits = BitField{
        .bit0 = 0,
        .bit1 = 0,
        .bit2 = 1,
        .bit3 = 0,
        .bit4 = 0,
        .bit5 = 1,
        .bit6 = 0,
        .bit7 = 1,
    };

    const reg = Register{ .bits = bits };
    const byte_value: u8 = @bitCast(reg.bits);

    print("0x{x}", .{byte_value});
}
