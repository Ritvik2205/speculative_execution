.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rbx, 69
cmp bx, 26
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
mov rdx, rsi
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
imul si, dx, 94
neg sil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 73
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
adc eax, -1513455903
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
cmovnbe rcx, rcx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
sub cl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 1
cmp rdx, 60
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
sbb rdx, 81
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, -2
add bl, 72 # instrumentation
cmovle bx, ax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 62
cmovz dx, dx
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdx]
xor cl, -54
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], eax
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
inc rdx
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
sub dil, -10
cmp cl, 18
bt ebx, eax
imul bx
and al, dil
and bx, 95
and dx, 1
cmovnbe si, cx
or sil, sil
and dl, bl
cmovnl rbx, rax
or di, bx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
