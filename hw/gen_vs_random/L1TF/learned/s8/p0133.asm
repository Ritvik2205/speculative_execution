.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, di
xor cl, bl
xor bl, dil
and bl, bl
cmovb rax, rdi
lea rax, qword ptr [rsi + rbx + 39]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
