.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
xor ebx, edx
xor cl, cl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
dec edx
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
sbb sil, dil
cmovl edi, eax
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rsi]
cwd
xor dl, bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
test edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
