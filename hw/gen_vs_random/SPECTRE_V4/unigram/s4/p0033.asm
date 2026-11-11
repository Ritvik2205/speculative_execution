.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 34
cmovnbe dx, si
add rax, rcx
sub bl, bl
mul ax
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
adc dl, sil
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
imul cl
imul ebx, ecx, 31
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], edi
cmovnp dx, dx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], dx
and al, -36
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
not rcx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sub bl, cl
add bl, -18 # instrumentation
mov rbx, rdi
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 26
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
test eax, edx
add al, cl
not al
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
sub bl, 17
sbb dil, 3
and ax, 35
cmovb bx, bx
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
sub ebx, esi
dec ecx
sbb dl, dil
bt ebx, 228
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
mov dl, -34
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
test dil, cl
cmovle ecx, esi
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
btc bx, 62
cmovnp edx, edx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 15
btc rdx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
