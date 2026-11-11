.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
sbb dl, -99
movsx ecx, dx
movzx ecx, dil
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 67
add bx, 110
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 43
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 79
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
add cl, -117 # instrumentation
cmovs rax, rcx
and rdi, -2
cmovs rsi, rdi
cmp sil, 88
cmp rdi, 60
add cl, 119 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
adc esi, 90
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 33
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rcx
btc rdx, 44
or al, dl
cmp sil, 88
test di, bx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 98
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
cmovno ebx, ecx
cmp di, 50
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 86
cmovz rax, rdx
and edi, 14
cmovz si, si
sub eax, ebx
test cl, -89
cmovz edx, edx
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
add ax, -15653
and rdi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdi]
bts bx, 56
sub al, 99
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 28
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
inc ebx
cmovnz eax, edx
add cl, -21 # instrumentation
adc rbx, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
