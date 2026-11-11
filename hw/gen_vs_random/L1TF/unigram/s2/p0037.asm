.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -1 # instrumentation
nop
xor bl, cl
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
xor rcx, rax
bt cx, 34
sbb ebx, -116
add cl, 107 # instrumentation
cmovnl bx, bx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
add bl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
sbb sil, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -81
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
cmp ecx, 23
sub edx, -33
inc cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
