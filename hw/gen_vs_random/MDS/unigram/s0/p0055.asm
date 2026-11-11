.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rax, 77
test rax, rbx
and dl, 125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
test sil, -96
cmovl rsi, rax
cmovb rax, rcx
or ebx, -15
and bl, 109 # instrumentation
cmovs dx, ax
xor dl, al
or bl, -52
and bl, -81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
cmovl eax, esi
cmovl rdx, rbx
and rax, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
test dil, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
