.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
cmovno rbx, rax
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 43
xor si, dx
cmovnz di, ax
test al, bl
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
or rdx, rax
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
xor sil, dil
cmovz ebx, ebx
cmovnz rcx, rax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
add dl, -25 # instrumentation
cmovs rbx, rcx
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
cmovnbe si, di
adc bl, al
mov rax, -8100960678429780222
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
dec cx
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rcx]
not ebx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
or rax, -897763206
not rcx
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
add bl, -2 # instrumentation
cmovs rsi, rdi
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
cmovnz edi, ecx
cmovnbe eax, eax
sub bl, -98
sbb ebx, -54
add al, dl
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
cmp al, 105
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edx
or dl, al
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
add dl, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
cmovbe ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
