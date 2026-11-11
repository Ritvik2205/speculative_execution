.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx + rdi]
sub bl, -19
lea ecx, qword ptr [rsi + rsi + 16]
lea ecx, qword ptr [rcx + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 46
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 87
inc ebx
and rdx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rbx
sub dil, dil
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], ax
movsx rbx, dx
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
