.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
and rax, 1163013815
xor rcx, 94
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
xor al, sil
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
sbb al, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
