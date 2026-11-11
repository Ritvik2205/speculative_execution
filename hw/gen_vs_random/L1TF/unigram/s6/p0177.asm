.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
add dl, 85 # instrumentation
cmovp cx, cx
cmovs dx, ax
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
lea edx, qword ptr [rcx + rdx + 99]
and dx, 28
sub al, 9
lea rdx, qword ptr [rdi + rcx + 30]
add dil, 62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
cmovs cx, ax
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
