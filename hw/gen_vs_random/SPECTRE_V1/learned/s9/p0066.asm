.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], dx
or esi, -74
add sil, -68
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rbx + rax + 1]
xor dl, dl
sbb rax, 342397759
adc cl, -19
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
sub dl, sil
sub si, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
