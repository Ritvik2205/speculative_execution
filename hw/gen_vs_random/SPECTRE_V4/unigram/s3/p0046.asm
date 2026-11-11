.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 46
add dl, 31 # instrumentation
cmovnl bx, bx
add cl, 8 # instrumentation
adc dl, al
add cl, 17
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
add dl, -114 # instrumentation
cmovl cx, si
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 29
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
cmp rdi, 29
xchg bx, ax
and al, -36
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], ebx
xor dil, bl
movzx dx, dl
cmovnbe rax, rbx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
add bl, cl
cmovp rcx, rdi
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
add bx, 110
xor dl, cl
imul eax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
cmovnbe rsi, rdi
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ecx
sub dl, dl
xchg ax, si
cmovs rcx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
cmovs eax, edx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
movzx ebx, al
or bl, bl
sub bl, bl
xor bl, al
xor rdi, rsi
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
add al, -10 # instrumentation
cmovnbe eax, ebx
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
