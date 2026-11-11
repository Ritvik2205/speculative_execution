.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
add bl, dil
sbb eax, 316213929
test cl, 78
bswap edi
add bl, sil
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
sub bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
dec al
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
sub rdi, -34
mov bl, cl
bt edi, eax
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 25
and rdi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdi]
btr rcx, 134
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
xor bx, -65
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
add dil, al
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
add cl, 14 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
add cl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
or bl, -86
btr di, 245
and rax, 37
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
sub dil, 35
adc eax, 948001339
xor ax, dx
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
and esi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
add bl, -101 # instrumentation
cmovz edi, edi
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
adc dil, sil
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
