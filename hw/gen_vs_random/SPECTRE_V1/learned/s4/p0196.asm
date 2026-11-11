.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
inc si
sbb cl, -122
setle cl
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rax
test dil, -107
neg cx
lea dx, qword ptr [rsi + rsi + 74]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
add al, 127 # instrumentation
sets cl
lea si, qword ptr [rax + rdx]
lea rsi, qword ptr [rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
or sil, -27
cmovl esi, ecx
cmovz ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
