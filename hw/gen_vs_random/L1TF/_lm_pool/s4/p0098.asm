.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
sub dil, 87
setno dl
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
cmovnz rsi, rcx
lea rdx, qword ptr [rsi + rax]
lea rsi, qword ptr [rdi + rax + 42]
bt cx, 77
sbb cl, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
