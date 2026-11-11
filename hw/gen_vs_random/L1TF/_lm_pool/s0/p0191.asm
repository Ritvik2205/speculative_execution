.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
sub al, 26
xor cl, 89
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
lea ax, qword ptr [rdi]
and dl, -49
sub bl, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and cl, 24
or rdi, 37
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
