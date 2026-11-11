.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
sub sil, -99
jmp .bb_0.1
.bb_0.1:
sbb cl, al
jmp .bb_0.2
.bb_0.2:
sub bl, -96
and cl, sil
jmp .bb_0.3
.bb_0.3:
test dl, -37
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
xor ax, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
