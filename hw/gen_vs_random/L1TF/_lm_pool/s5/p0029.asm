.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 16
cmp ebx, 63
btc cx, bx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
lea rbx, qword ptr [rdi + rdx]
cmovb ax, cx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
xor bl, dil
sub dl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
