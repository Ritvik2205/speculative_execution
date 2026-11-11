.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 28
cmp rax, 900122030
mov dl, cl
cmp dil, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -109
xor sil, al
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
cmp al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
