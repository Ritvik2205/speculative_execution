.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 5
add cl, -117 # instrumentation
cmovs rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
cmp bx, 67
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and bl, 26
movzx di, bl
cmovnbe rsi, rdx
imul bx, ax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
xchg edx, edi
xor dil, 57
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
cmovnp rsi, rsi
neg al
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
cmovle dx, dx
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
xor ax, dx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and dil, 96
add bl, -72
test al, dil
cmovl rax, rdi
sub dl, 43
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
adc cl, cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
or rbx, rax
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
cmovs rsi, rcx
test cl, al
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 51
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
add al, 72 # instrumentation
cmovle ax, dx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
