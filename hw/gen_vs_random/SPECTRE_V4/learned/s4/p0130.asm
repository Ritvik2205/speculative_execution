.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
mul ax
sbb rax, 183833426
xchg dx, ax
or eax, 2007177863
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
imul cl
mul dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
xor sil, 56
cmovp ax, bx
or dl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
test eax, -544019457
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
xor eax, -164167056
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
or ax, -15282
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 84
cmovbe rsi, rbx
sub sil, -36
sub bl, bl
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
cmovb di, di
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], si
not rdx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
xor rbx, 38
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 52
xor al, -2
xor di, -43
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
movsx rsi, dx
xor sil, 56
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
movzx rcx, bx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
