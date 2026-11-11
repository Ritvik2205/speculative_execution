.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ecx, eax
and sil, -84
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dil
cmovl rax, rcx
cmp rcx, rbx
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
add dil, bl
sbb ax, 1843
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
add al, -7 # instrumentation
btc bx, ax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
add dl, dl
imul rdi, rdi
add edi, 63
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -21
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
cmovl bx, dx
and rdi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdi]
xor bl, cl
neg cl
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ebx
add dl, 59 # instrumentation
cmovno rax, rdi
neg ecx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 38
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
mov bx, 27738
mul ecx
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
xchg eax, ecx
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
xor rcx, 112
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
sub edx, eax
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 41
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
cmp rdx, -49
and rsi, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rsi]
test dx, dx
btr rax, 187
and sil, -84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
