.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 9
test dil, cl
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 69
bt si, ax
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 9
or dx, 125
test dl, -95
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
and cx, di
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
and cl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
test rbx, 100
xor al, 9
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and bl, 49 # instrumentation
cmovbe rsi, rdi
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
test dil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
