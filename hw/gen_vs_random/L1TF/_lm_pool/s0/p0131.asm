.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
add al, al
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb sil, dil
jmp .bb_0.2
.bb_0.2:
cmovnbe ebx, esi
bt eax, edx
js .bb_0.3
jmp .exit_0
.bb_0.3:
cmovnle rax, rbx
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
