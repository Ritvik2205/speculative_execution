.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
cmovnb rbx, rcx
movsx esi, si
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
bt rbx, rbx
and cl, al
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and bx, bx
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
xor al, -6
mov sil, cl
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 75
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -95
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
sbb cl, 127
xchg bl, cl
sub rax, -1881584175
sub dl, cl
imul cx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
movzx edx, cl
adc bl, dl
not sil
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
add bl, -101 # instrumentation
cmovz ecx, ecx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
not cl
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
btr bx, dx
sub cl, al
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
and ax, 16313
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
test dl, dl
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], edi
and al, al
sbb rsi, 117
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
dec rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
