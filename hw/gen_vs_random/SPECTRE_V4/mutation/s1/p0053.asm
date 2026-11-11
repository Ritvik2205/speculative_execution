.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, 233
dec bl
adc dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
movsx rsi, bx
add dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
cmovnz bx, di
btc rax, rax
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
cmovz rbx, rdi
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
mov ebx, 51969593
bswap edx
xchg esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
dec al
cmovl edi, eax
or al, -19
or bl, 80
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
mov bl, al
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
movsx cx, dil
mov rdi, rdi
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 98
add al, -60 # instrumentation
cmovle rsi, rdx
mov sil, sil
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
test cl, -31
xor dl, al
inc sil
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
add rax, 1049076260
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
cmp rbx, -3
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
adc dil, -48
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
