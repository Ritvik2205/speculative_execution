.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edx, ebx
or dl, bl
sub ecx, 71
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 95
test dl, cl
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
mov esi, 61
add bl, 63 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], esi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
mov cl, sil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
xor rdi, 73
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 56
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 94
xor bx, dx
cmovb si, si
cmovnle ebx, eax
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
cmovns di, cx
cmovle rax, rbx
adc sil, dl
or di, 97
and edi, 94
mul dl
and rsi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 20
add ebx, 3
add bl, -18 # instrumentation
mov rax, rbx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
imul cl
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
and rax, 23
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 41
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rax]
neg dl
adc ecx, -12
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
sub cl, cl
or si, 0b1000000000000000 # instrumentation
bsf si, si
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 7
cmp sil, sil
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
