.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
add al, -109
sbb cl, al
add dl, 47
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
sub al, -66
sbb dil, -106
xor bl, al
cmovle rcx, rbx
adc dil, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
