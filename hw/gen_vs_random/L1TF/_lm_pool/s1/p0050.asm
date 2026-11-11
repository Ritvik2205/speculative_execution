.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
adc dil, cl
jmp .bb_0.1
.bb_0.1:
setnle dil
jmp .bb_0.2
.bb_0.2:
add al, 74
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 55
or sil, -44
add dl, -1
test sil, 29
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
