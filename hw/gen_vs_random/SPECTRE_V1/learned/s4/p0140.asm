.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
sub dil, dl
lea ebx, qword ptr [rcx]
add dil, 72
xor dl, al
add dl, 47
and dil, 98
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 47
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
and cl, 86
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
