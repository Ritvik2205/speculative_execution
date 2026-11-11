.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo ebx, edi
xor ax, -23364
and cl, -71
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
bts bx, si
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
bt di, cx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
xor al, 8
cmovno rdx, rsi
and al, -87 # instrumentation
cmovo ax, di
or bx, si
and rbx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and cx, -2
or cl, sil
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
