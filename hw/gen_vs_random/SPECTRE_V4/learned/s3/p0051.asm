.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and bl, cl
sbb al, 57
cmp al, dl
cmp ax, -22704
xor cl, dil
and al, 92
xor al, -40
add bl, sil
cmp eax, -2073187604
or al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
