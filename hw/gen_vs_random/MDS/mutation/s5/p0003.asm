.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
cmovno rdx, rsi
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
and cl, 79
bt di, cx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and al, -87 # instrumentation
cmovo ax, di
xor ax, -6793
bts bx, si
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or bx, si
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
xor al, 115
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
cmovo ebx, edi
or cl, sil
and cx, -8
and rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
