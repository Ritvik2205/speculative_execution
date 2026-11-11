.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and cl, -6
and rbx, rdx
bts bx, si
cmovno rdx, rsi
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
or bx, si
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
xor ax, -5889
and cx, -2
xor al, 9
cmovo ebx, edi
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
or cl, sil
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
bt di, cx
and al, -87 # instrumentation
cmovo ax, di
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
