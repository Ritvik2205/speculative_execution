.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
test al, bl
and cx, 127
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and bl, 89
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
jmp .bb_0.1
.bb_0.1:
or al, -57
sub dl, -49
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 7
sbb sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
