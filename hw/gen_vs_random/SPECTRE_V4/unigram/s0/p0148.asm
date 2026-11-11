.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 77
btc ebx, 94
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
test ecx, 84
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 100
imul sil
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
sub rcx, 77
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
sub bl, al
or sil, dil
add bx, 110
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
mov rdx, 93
add bl, 38 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rcx]
sub al, sil
mov bl, bl
xor ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 1
add cl, cl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
not bx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
adc dl, al
cmovnbe si, bx
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
sbb dil, al
cmovle ecx, edi
sbb bl, 57
or esi, 78
mov rcx, 4219775168754920203
cmovle si, ax
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
xchg rcx, rax
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdi
sbb dl, -99
xchg ecx, ebx
cmp rcx, 39
and bl, dil
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], edx
sbb cl, al
movzx rsi, dil
bts rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
