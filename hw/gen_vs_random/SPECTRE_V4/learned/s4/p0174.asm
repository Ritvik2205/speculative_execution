.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 8 # instrumentation
adc al, dil
test bx, -1599
sub bl, al
cmovnp rdx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
adc bl, 89
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
mov rdx, 35
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rcx], bx
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
xor dl, dil
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
add rbx, 94
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 16
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
and rbx, 110
cmovnb bx, bx
btc rsi, 225
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
cmovnbe rax, rsi
cmovb di, di
mov al, 64
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
cmovns edi, ecx
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
cmovo rbx, rax
cmp bl, dl
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
adc sil, al
cmovb edx, ecx
imul rcx, rax
add rdi, rcx
adc eax, -79
cmovnp rbx, rsi
movzx rcx, bx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
