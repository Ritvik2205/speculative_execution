.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
adc cl, -18
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 36
setnp al
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 23
add dil, -6 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 96
cmovnp si, cx
setnbe dl
add dl, 56 # instrumentation
cmovns esi, edx
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rbx
add dl, -47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
