.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 57
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
bts rbx, rbx
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
sub edi, eax
cmovnp rax, rdx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
adc dl, dil
or bl, 55
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
sub bl, al
mov rcx, 4219775168754920203
sub rbx, 38
sub dl, dl
add cl, -37 # instrumentation
adc esi, 77
sbb cl, 20
neg bl
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 58
adc di, -110
movzx esi, dil
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
cmovp ax, cx
mov ax, 21
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and al, sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 24
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 42
mul esi
test dl, bl
mov ax, 76
test dil, 10
test dl, bl
movzx ecx, al
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
mov dil, -118
sbb ax, -26881
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 70
sbb dl, -99
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
not dx
and si, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
