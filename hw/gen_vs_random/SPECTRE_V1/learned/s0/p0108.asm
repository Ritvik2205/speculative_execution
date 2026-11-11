.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
sub bl, dil
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], -31
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
cmp cl, dil
xchg bl, al
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp edx, 44
jmp .bb_0.2
.bb_0.2:
and dl, 0 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
cmp al, 62
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
setns al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
