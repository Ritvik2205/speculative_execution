.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
cmp bl, -79
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], edx
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 29
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
movzx ecx, dil
add ax, -7857
btc esi, 63
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
cmovnbe edx, ecx
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
add sil, sil
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
xor rbx, rax
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rsi
cmovnl dx, cx
xor al, -31
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 48
xor ax, 20236
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
imul ax
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 33
sbb sil, -11
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
xor dl, al
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], dx
or ebx, -82
sbb al, -14
add ecx, esi
btr ax, di
cmovp rcx, rdx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
adc dil, al
neg rcx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 36
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], di
xor cl, dil
adc rcx, 57
sub eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
