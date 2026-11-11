.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 8
xor al, -4
and dx, 3
or al, bl
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
btr di, 89
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
or al, 74
or al, 54
bt ax, si
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and eax, 943733866
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
bt dx, bx
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
