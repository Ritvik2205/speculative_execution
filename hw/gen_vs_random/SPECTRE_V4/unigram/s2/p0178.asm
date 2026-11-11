.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp si, 109
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
bt eax, edi
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
add bl, -84 # instrumentation
cmovb ax, di
add al, -79 # instrumentation
adc rbx, 11
btc esi, 63
adc dil, al
cmp al, dil
sub dil, al
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
cmovbe di, di
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
cmovbe esi, ebx
bt esi, 69
sbb al, -52
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
mul rbx
inc ecx
sbb edx, esi
or bl, dl
add dl, -79 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], 60
mov ebx, 51969593
and rcx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rcx]
sbb bl, sil
imul dl
and edx, eax
cmp dl, sil
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 67
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
add bx, 56
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
xor rax, 944027678
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
adc cl, sil
bts esi, 18
dec rbx
or si, si
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
imul rax, rsi
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rbx
add cl, 46 # instrumentation
adc cx, di
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
