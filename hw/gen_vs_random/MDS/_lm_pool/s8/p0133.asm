.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
test ebx, -2015966884
test al, bl
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
or rax, -1561934807
xor al, cl
test cl, 0
jmp .bb_0.1
.bb_0.1:
xor al, 9
test dl, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or cl, -77
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
