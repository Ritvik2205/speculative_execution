.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, rdx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
xor al, 9
or bx, si
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
bts bx, si
bt di, cx
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
or cl, sil
cmovno rdx, rsi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and cl, -19
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 2
and cx, -8
cmovo ebx, edi
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
xor ax, -16696
and al, -87 # instrumentation
cmovo ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
