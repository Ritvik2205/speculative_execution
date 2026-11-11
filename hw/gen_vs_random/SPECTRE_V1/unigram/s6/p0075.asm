.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 31
btc edi, 60
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rcx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
setp al
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax], 89
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
test bl, -8
sbb edx, edi
add cl, 32 # instrumentation
cmovnbe rax, rbx
xchg dl, al
add rbx, 13
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
cmp cl, 73
and esi, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
