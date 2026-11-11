.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 12
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmovs dx, bx
btc ax, di
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
jmp .bb_0.3
.bb_0.3:
lea rsi, qword ptr [rdx + rcx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
