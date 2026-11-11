.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
cmovs bx, ax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and rdx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
xor al, -4
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 77
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 11
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
xor al, bl
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
