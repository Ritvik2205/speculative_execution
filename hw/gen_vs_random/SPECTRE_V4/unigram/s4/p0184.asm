.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
bts ecx, esi
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
and cl, 58
cmovnbe rsi, rdx
xor si, 62
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
and cl, bl
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
neg cl
add al, 72 # instrumentation
cmovle ax, bx
add dl, 31 # instrumentation
cmovnl di, di
cmovnl rdx, rbx
sbb di, -76
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 58
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 41
neg rcx
add bx, bx
and rdi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdi]
cmovp edi, edi
sub sil, -36
neg rcx
cmovns esi, ecx
imul edx, esi, 28
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
bts esi, esi
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 94
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], si
add al, 122 # instrumentation
cmovns edx, ebx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 72
sub ecx, 22
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
sbb cl, -104
xor edi, ebx
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
