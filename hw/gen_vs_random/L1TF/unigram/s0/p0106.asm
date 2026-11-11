.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
adc al, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
or bx, 19
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
add rax, rcx
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 45
sbb dl, dil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 92
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
adc rcx, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
