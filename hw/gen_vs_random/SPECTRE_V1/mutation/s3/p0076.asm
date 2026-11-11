.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, al
and dil, -93
lea edx, qword ptr [rbx + rcx + 37832]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -70
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
cdq
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -93
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
inc rax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
or dx, dx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
lea dx, qword ptr [rbx + rdx + 56387]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
