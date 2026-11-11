.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, si
sub dl, 95
and rdi, 31
test al, sil
xor bl, dl
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
and sil, -69
xor al, -19
test eax, -571234566
or sil, -49
test dil, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
