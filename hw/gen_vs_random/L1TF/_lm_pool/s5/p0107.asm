.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
sub cl, 86
or al, -2
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
and rax, -109
jp .bb_0.2
jmp .exit_0
.bb_0.2:
lea si, qword ptr [rbx + rdx + 89]
and sil, sil
test edx, -541774418
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
