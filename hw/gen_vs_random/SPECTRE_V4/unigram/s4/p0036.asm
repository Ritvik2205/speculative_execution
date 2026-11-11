.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
cmovz ecx, eax
cmovnle dx, si
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
add bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add bl, 46 # instrumentation
adc bx, cx
cmp di, -8
mov eax, eax
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], eax
add cl, 14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
cmp bl, dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
and cl, -128
or al, bl
or di, 0b1000000000000000 # instrumentation
bsr di, di
and ax, -14374
or dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
and al, cl
xor rbx, -99
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
xor sil, 38
sbb dx, 2
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rcx
add dl, -58 # instrumentation
xchg bx, di
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
sub dx, si
sbb cl, -69
bswap esi
xor edx, edi
dec rdx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dil
add eax, ebx
cmovnz rdx, rcx
mov si, -8007
and dl, -11
cmovnbe dx, si
xor dil, dil
imul rcx, rax, 20
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
