.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edx, 86
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 85
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
or rcx, 7
lea cx, qword ptr [rax + rdi]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
or bl, al
sub ebx, 75
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
add dl, -86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
lea rdx, qword ptr [rdi + rbx + 75]
setbe al
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
