.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
cmp cl, bl
test dl, bl
xor rax, 93
test sil, 1
add dil, cl
and dl, bl
test al, bl
adc sil, cl
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
mov dil, bl
sbb al, -4
adc dil, 112
cmp al, -1
or al, dl
test sil, 1
and dl, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
