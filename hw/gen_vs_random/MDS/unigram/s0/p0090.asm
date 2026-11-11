.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
xor al, 77
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 81
xor al, -15
cmovb ax, si
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
jmp .bb_0.1
.bb_0.1:
and bl, -30 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 45
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
or bl, -98
or dil, -52
test sil, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
bts esi, edi
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
