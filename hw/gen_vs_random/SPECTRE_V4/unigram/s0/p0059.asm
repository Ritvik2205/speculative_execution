.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
btc eax, 18
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ebx
test bl, sil
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
add dil, 82
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
sub sil, -36
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 68
and rdx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdx]
xor sil, 56
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 54
cmovnl bx, si
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
sub cl, al
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
cmp edx, 8
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
add esi, -5
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
or dx, si
add eax, -1796699558
cmp si, 65
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
xor bl, 93
sbb rax, rdx
add cl, 106 # instrumentation
cmovnp rdi, rcx
test dil, 71
add ebx, edi
adc bx, -89
sub bl, 17
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
xor ax, 28088
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add edx, 85
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
