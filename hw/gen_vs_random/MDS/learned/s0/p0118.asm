.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
not rsi
xor cl, al
test esi, 1857129931
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
or al, bl
or bl, cl
or al, -17
and ax, -122
or al, 30
or sil, dil
and al, -114
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
