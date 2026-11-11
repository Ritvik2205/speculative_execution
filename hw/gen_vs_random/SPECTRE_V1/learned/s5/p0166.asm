.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
xor bl, al
lea rdx, qword ptr [rcx + rdi + 10]
mov cl, al
and bl, 124
adc sil, cl
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and bl, -65
sbb al, bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
