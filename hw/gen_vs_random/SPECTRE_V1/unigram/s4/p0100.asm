.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, 122
lea rdi, qword ptr [rsi + rdi]
sbb al, dil
cmp dl, -115
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
lea rdi, qword ptr [rdx + rsi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
or cl, -98
test si, 99
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 22
sbb al, al
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
sub eax, -882981501
add sil, 2
lea rax, qword ptr [rdx + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
