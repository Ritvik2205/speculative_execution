.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rsi + rbx + 2]
and bl, -65
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 60
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
add dl, 38 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 17
xchg rbx, rdx
sbb edi, 66
lea eax, qword ptr [rbx + rsi + 53]
and rdx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdx]
sub al, -82
sbb ebx, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
