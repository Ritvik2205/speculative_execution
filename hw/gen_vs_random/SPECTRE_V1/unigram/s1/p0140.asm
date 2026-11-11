.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, bx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 99
cmovnp cx, ax
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and rcx, rcx
add ax, 6980
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rcx
add cx, -103
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 53
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 47
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
cwd
sub di, dx
test rbx, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
