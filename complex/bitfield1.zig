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
    const reg = Register{ .byte = 0xA4 };
    const bits: BitField = @bitCast(reg.byte);

    print("0x{x} = {}{}{}{} {}{}{}{}", .{
        reg.byte,
        bits.bit7,
        bits.bit6,
        bits.bit5,
        bits.bit4,
        bits.bit3,
        bits.bit2,
        bits.bit1,
        bits.bit0,
    });
}
