.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb dl, bl
sub eax, 2030845821
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
inc esi
test dl, dl
cmovs ebx, eax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
bt eax, 84
sub ax, si
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
cmovnbe ax, bx
cmp al, 70
movzx esi, si
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
setle dl
add cx, cx
sub rax, -701741274
and rcx, -102
mul edx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
btc rbx, rcx
add bl, -18 # instrumentation
mov rcx, rsi
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 26
btc ebx, 94
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
imul rdi, rsi, 57
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
sub ecx, 73
test ecx, 61
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
mov rcx, 5862286138240743445
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
sub dl, dl
cmp cl, cl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
