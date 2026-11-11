.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
add cl, -127
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
cmp ecx, 86
sub al, -1
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jle .bb_0.3
jmp .bb_0.4
.bb_0.3:
or eax, -1641258390
jnle .bb_0.4
jmp .exit_0
.bb_0.4:
lea rax, qword ptr [rdi + rdx + 43]
sub al, dl
xor al, cl
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
