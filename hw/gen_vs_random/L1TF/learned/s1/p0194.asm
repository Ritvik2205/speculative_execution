.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rsi]
sub sil, 45
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
cmovp ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 25
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 30
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
add sil, -6 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
imul esi, ecx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and dl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rsi]
mov rsi, 29
cmovno dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
