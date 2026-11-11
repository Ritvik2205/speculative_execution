.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
xor ax, -23364
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and ecx, -104
and dl, dl
xor dx, 87
and cl, dil
test cl, 73
or rsi, 9
or bl, dl
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
or sil, -49
and cl, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
