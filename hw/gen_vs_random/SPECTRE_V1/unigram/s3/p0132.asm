.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
btr esi, edi
add al, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
lea ecx, qword ptr [rcx]
movsx di, sil
bt dx, 88
bts di, di
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 29
lea rsi, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and cl, -57
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
