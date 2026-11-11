.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
test ebx, 22
adc rcx, -99
cmovle rax, rdi
mov cl, bl
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
add bx, 40
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 71
dec si
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
add al, cl
cmovnz rax, rax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
cmovz esi, esi
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
xor bl, bl
mov cl, sil
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
sbb bl, -79
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
btc rax, rbx
sub bl, -89
xor al, al
cmovbe edx, edx
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -2
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
not dl
test ebx, 25
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], esi
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
adc dl, cl
add sil, dil
btc ecx, eax
adc rbx, 60
cmp dil, sil
movsx ax, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
