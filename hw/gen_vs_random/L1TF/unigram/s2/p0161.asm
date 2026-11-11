.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
cmovbe ebx, edi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and sil, al
and dl, -98
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
cmp esi, eax
lea di, qword ptr [rcx + rdi]
jmp .bb_0.1
.bb_0.1:
sbb bx, 58
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 96
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
or dx, -126
cmovnb rax, rsi
add dl, -121 # instrumentation
cmovnp edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
