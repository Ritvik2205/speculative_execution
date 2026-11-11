.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
or al, -61
and cx, -2
or dil, 16
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
or cl, -36
or rax, 1020005579
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
and dl, -73
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and sil, -9
and di, 99
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
or cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
