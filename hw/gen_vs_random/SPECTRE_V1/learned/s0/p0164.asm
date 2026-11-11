.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
movsx di, sil
or dl, sil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -41
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
bts rsi, 234
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rbx
xor cl, 114
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
sub dl, cl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
cmovp ax, si
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 55
lea ax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
