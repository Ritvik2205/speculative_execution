.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
cwde
bts rsi, 64
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, -86
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
imul rbx, rcx, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
