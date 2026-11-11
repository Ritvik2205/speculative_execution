.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
lea ebx, qword ptr [rdx + rax]
adc cl, dl
or cl, 97
movsx si, dil
setnp bl
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98
test dil, -107
sub rsi, 121
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -19
bt bx, cx
lea ecx, qword ptr [rbx]
cbw
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
