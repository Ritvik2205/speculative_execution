.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, 123
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rcx
or dx, 0b1000000000000000 # instrumentation
bsr di, dx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
cmovs dx, bx
btc dx, 119
and dl, 7
setnl dl
btc rbx, 14
xor eax, 181978569
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 20
movzx eax, al
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rcx
jmp .bb_0.1
.bb_0.1:
or rax, 63
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
sub dl, al
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
or rdi, rsi
xchg edx, esi
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add ebx, 3
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and bl, 26
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], edi
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rbx
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor sil, cl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
xchg bl, dl
cmp bl, 13
movzx rdx, si
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
xor eax, 181978569
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
