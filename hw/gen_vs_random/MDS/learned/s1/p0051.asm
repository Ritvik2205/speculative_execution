.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 48
test ax, dx
test cl, dil
and sil, 89
and dl, -73
and cl, cl
xor bl, -102
or cl, cl
or cl, dl
xor al, -19
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
test esi, 425331143
cmovnp rdi, rbx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
