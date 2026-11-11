.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
and al, -68
and rbx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test sil, 29
sub dil, 87
or bl, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
