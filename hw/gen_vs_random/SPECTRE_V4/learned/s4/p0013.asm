.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
or rax, -897763206
sbb bl, -79
test dl, -125
or bl, 61
cmp al, 105
sbb dil, 67
adc dil, sil
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
add cl, bl
xor dl, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
or al, 27
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
test al, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
