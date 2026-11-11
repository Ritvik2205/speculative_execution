.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
cmovnp rbx, rcx
movsx esi, sil
bswap rbx
movsx rdx, bx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 44
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
add al, 36 # instrumentation
cmovnp rbx, rdx
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], 59
movzx ax, bl
or rdx, rdx
not edx
add rsi, -60
add cl, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
