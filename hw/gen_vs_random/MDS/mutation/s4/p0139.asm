.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and cx, -8
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
xor ax, -4010
cmovno rdx, rsi
and cl, -19
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and rbx, rdx
or cl, sil
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
bts bx, si
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
or bx, si
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
cmovo ebx, edi
xor al, 8
and al, -87 # instrumentation
cmovo ax, di
bt di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
