.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rdi, rsi
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
test al, dil
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
sub sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
