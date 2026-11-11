.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
and al, bl
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
cmp dil, bl
adc sil, 42
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
add bl, dl
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
