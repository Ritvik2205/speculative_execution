.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 90
sub al, -82
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rdi]
sub al, bl
lea cx, qword ptr [rdi]
sub ax, -16648
dec al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and al, 33
add bl, -95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
