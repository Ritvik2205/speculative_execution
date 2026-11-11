.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
add dl, dl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rax, -1877933118
lea rax, qword ptr [rdx + rbx + 19]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
sbb al, 33
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 86
sbb ecx, 42
setnz dl
jnbe .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
