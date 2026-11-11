.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
mov cl, bl
cmovz si, di
xchg sil, dil
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
cmovnz ecx, eax
imul ax, di
and ax, -4731
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -72
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
xchg esi, edx
or cl, cl
xor rax, -98
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and cx, di
adc rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
movzx ecx, cl
sub bl, al
cmovp esi, ecx
test bl, dl
mov bx, si
xor si, ax
test rdx, rax
add rdx, rsi
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
cmovnp rsi, rdi
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
movzx esi, bl
or dil, 5
or cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -127
xor eax, 308288205
and si, -70
adc dl, sil
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
cmovz di, dx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
