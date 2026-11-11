.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and dl, 13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -124
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
test sil, 41
cmovl rsi, rax
cmovb rax, rcx
or ebx, -104
and bl, 109 # instrumentation
cmovs dx, ax
xor dl, al
or bl, -54
and bl, -81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
cmovl eax, esi
cmovl rdx, rbx
and rax, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
test dil, 46
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
