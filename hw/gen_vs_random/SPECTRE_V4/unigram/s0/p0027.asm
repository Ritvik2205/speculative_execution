.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 80
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 62
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
cmovnb rsi, rax
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
xchg bl, dl
add sil, dl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add al, al
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
cmovb bx, bx
add bl, 38 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdx]
test rsi, 19
adc ebx, 117
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rax]
add al, 5
neg ax
add cl, 29
test esi, 12
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
cmovnbe rcx, rax
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
sbb bl, bl
cmovnp rdi, rdi
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
add al, 5
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
btc edx, 84
movzx bx, sil
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 10
mul ax
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
adc sil, cl
xchg cl, bl
test dil, dil
add al, -10 # instrumentation
cmovnbe eax, edx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
