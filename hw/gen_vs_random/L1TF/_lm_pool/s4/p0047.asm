.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dl
sbb bl, sil
cmovnp di, bx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and al, -68
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
and bl, 89
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 83
jmp .bb_0.2
.bb_0.2:
and dl, 0 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
sbb dil, cl
test cx, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
