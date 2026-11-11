.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, dx
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
add bl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rcx]
bswap rax
imul edx, edi
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 33
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rcx], ax
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
mov bx, 5
sbb eax, 125
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edx
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
