.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdi
cmovs ax, cx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or dil, dil
cmovz ax, ax
and cl, bl
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 39
test di, si
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], si
or rbx, rdx
cmovp cx, bx
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rbx
and bl, -74 # instrumentation
cmovns ebx, esi
and al, -54
and dl, 84 # instrumentation
cmovbe dx, bx
cmovle eax, esi
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
or edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
