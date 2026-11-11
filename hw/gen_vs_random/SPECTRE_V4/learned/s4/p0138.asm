.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
xor cl, al
cmp rdi, 28
xor bl, sil
xor dl, bl
sub dl, -16
and al, 59
imul rbx, rsi, 35
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
add al, -32
or al, -16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
