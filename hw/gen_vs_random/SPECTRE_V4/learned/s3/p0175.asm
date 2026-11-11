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
cmovnp rcx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
bt edi, edx
btc di, bx
test rdi, -1876639003
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
cmovo rbx, rax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rcx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rcx]
or dl, cl
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
xor eax, -437098167
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 19
and rsi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rsi]
and al, -127
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
and rax, 41
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
imul si, dx, 62
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
add bl, -72
add rdi, -94
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
xchg ecx, eax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor sil, dil
cmovnle rbx, rbx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], ax
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rdi
imul rdi
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
lea ebx, qword ptr [rdi]
cmovle rdi, rdx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
sub rsi, 26
movzx edx, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
