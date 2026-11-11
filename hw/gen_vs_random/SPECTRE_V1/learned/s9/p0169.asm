.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -47
add sil, 2
add cl, dil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
