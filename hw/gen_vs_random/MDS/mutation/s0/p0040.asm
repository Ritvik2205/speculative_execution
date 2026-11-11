.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -6
or cl, sil
cmovo ebx, edi
or bx, si
xor al, 8
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and al, -87 # instrumentation
cmovo ax, di
bts bx, si
bt di, cx
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and cx, -8
xor ax, -12492
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
cmovno rdx, rsi
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and rbx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
