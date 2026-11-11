.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
lea si, qword ptr [rcx]
or cl, bl
sub dl, -78
bts eax, 232
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rdi + rcx + 87]
xor dl, bl
btr ax, dx
xor dil, al
sbb dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
