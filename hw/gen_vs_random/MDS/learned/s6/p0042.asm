.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
xor al, 99
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and cx, -2
jmp .bb_0.1
.bb_0.1:
xor al, -19
or rax, 1461812833
xor dil, -124
test al, 22
xor dl, -59
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and dl, -73
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
