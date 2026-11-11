.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
cmovno dx, si
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
add cl, -127
add al, -109
lea rdx, qword ptr [rcx + rdi + 22]
adc al, -82
sub dl, dil
test cl, -33
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
inc ebx
sub sil, -18
sub al, bl
test al, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
