.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -34
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
lea rax, qword ptr [rdx + rdi]
cmovs rcx, rcx
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
add dl, -56 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], edx
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdx]
cmovp di, dx
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
imul rdx, rsi, 87
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 931150336
cmovz ax, ax
cmovs rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
