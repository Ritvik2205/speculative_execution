.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edi
btc si, 43
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
or sil, cl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
test rsi, 31
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and cl, al
xor eax, 1640090871
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and bx, 6
and bx, 77
or bl, -52
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
bt rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
