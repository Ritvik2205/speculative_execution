.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
or sil, al
adc sil, 41
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb al, cl
jmp .bb_0.3
.bb_0.3:
or bl, sil
adc bl, -14
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
