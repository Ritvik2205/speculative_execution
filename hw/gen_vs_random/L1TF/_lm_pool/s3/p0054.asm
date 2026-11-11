.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and dl, 32
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
add bl, 68
jmp .bb_0.1
.bb_0.1:
sbb dl, dil
and rax, 1994547909
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rdi]
or si, 51
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
sub dl, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
