.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
sbb al, -14
setz bl
cmp rax, -72548874
inc al
mov bl, sil
add esi, 44
add ebx, -47
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
adc edi, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
