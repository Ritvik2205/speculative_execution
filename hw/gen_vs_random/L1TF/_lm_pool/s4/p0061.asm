.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
sbb dl, -26
sub al, -97
xor al, dl
xor al, bl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or al, -2
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
jmp .bb_0.2
.bb_0.2:
add dl, -70
jmp .bb_0.3
.bb_0.3:
test bl, 84
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
