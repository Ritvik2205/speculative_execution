.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -109 # instrumentation
sbb ebx, 88
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 79
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
sub edx, 100
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 9
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 44
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
add al, 122 # instrumentation
cmovns eax, ebx
and cl, 58
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 89
test al, 66
sbb bx, 9
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
add al, 5
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
test sil, sil
and dil, al
imul sil
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
and di, 51
cmovnbe rcx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
imul rbx
test esi, 95
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
sbb bx, 81
test esi, 56
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 94
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 79
add eax, ebx
or dil, dl
cmovle rdi, rsi
cmovs eax, ecx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
imul sil
cmovb ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
