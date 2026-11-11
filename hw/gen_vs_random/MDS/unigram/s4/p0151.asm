.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 8
test rcx, rcx
btr di, si
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
and dl, -40 # instrumentation
cmovle cx, dx
cmovo bx, di
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and sil, sil
cmovbe edx, edx
or cl, dil
and sil, -56
and cl, 78 # instrumentation
cmovs cx, ax
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 87
cmovnle ebx, esi
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
