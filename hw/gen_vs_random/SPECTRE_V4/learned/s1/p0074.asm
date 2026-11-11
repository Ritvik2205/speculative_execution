.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, 1880179600
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
neg al
imul dx, bx
xor rbx, rax
btc rax, rdx
sub ax, 24441
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sbb rax, 183833426
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
adc ax, ax
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
xor cl, cl
cmp al, -23
cmovnle cx, cx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
cmovo dx, si
xor rsi, -3
or ax, -12775
and dl, bl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
or al, 109
cmp ax, 23131
adc dl, al
xchg rdx, rdi
bts rax, 157
lea si, qword ptr [rax + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdi]
add dl, bl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add ecx, eax
test al, 66
or dl, 56
adc bl, dl
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
cmp ax, -15031
test ax, dx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
cmp rax, 2115020203
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
sub dl, cl
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
add eax, -1796699558
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
