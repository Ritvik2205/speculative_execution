.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
test esi, 67
btr rsi, 48
add cl, 44 # instrumentation
cmovz eax, ebx
xor sil, -33
adc ecx, 6
cmovbe edx, edi
or sil, 34
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and bx, -118
lea dx, qword ptr [rbx + rdx + 56387]
add bl, 73 # instrumentation
mov rbx, 5
cdq
adc rcx, 43
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
