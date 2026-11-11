.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 24
and dil, cl
xor edi, 115
xor bl, dil
lea di, qword ptr [rax + rcx]
sub cl, -47
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, sil
lea rdi, qword ptr [rcx + rsi + 42]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
