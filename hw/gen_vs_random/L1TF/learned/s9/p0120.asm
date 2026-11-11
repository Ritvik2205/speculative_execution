.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
add dil, -7
btc edi, 62
and cl, dl
jmp .bb_0.1
.bb_0.1:
or dil, bl
sbb al, 92
lea rcx, qword ptr [rsi + rdx + 80]
and rcx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
