.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
and bl, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
cmovp si, dx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
or rdi, -11
cmovbe edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
or ebx, -104
and rcx, rdx
xor ax, -23364
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
xor al, 55
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and cl, -71
and cx, -2
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
or bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
