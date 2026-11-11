.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
add dil, 45 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
xchg edx, esi
mul rbx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor rdx, 58
add al, -42 # instrumentation
lea ax, qword ptr [rbx + rsi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
cmovle ebx, edi
sub dl, cl
sbb bx, 38
sub dx, -23
and rbx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rbx]
add al, 110 # instrumentation
movzx ax, dil
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
