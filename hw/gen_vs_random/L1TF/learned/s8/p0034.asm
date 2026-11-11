.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
sbb eax, -1165635662
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
xor bl, dil
and cl, 40
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
lea rdx, qword ptr [rax]
sbb sil, cl
jmp .bb_0.2
.bb_0.2:
add bl, 68
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
or dl, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
