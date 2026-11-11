.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, -83
xor al, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
xor al, 99
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
xor cx, -18
and cl, -71
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
xor cl, dil
test cl, -113
test esi, 1857129931
or bl, dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
test dl, sil
or sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
