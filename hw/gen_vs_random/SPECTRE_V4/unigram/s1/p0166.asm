.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
cmovl rdi, rsi
xor ebx, 30
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
movzx cx, al
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
test dl, 19
add dil, -75 # instrumentation
adc dil, 96
sbb ebx, 79
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
cmovle rax, rcx
not dx
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
movsx rsi, ax
xchg rbx, rsi
xor si, 86
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
bt eax, 84
cmp bl, dil
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 57
cmovle eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
movzx ax, al
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
add rsi, 56
xor si, di
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
imul rdi
add ebx, 3
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
neg al
and rdx, 97
cmovle rsi, rbx
cmovb edi, edx
sbb ecx, edx
test sil, al
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rsi]
xor al, sil
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 52
and rcx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
not ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
