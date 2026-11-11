.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
cwde
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
cmovz esi, edi
cmovb di, ax
cmp bx, si
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
cmovl edi, ecx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], eax
cmovl edx, esi
btr eax, 231
adc al, dil
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
cmovbe rax, rdx
add dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
