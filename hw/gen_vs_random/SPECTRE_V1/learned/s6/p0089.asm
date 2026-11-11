.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], si
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, 3
and dl, dil
or eax, -126
xor bl, dl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
cmp dil, bl
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
cmp bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
