.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -122
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], esi
sub dl, 107
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 89
cmp bl, dl
and rax, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
sub bl, 66
cmovl rsi, rax
movzx ax, sil
sub rbx, 101
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 37
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 42
xor dl, al
and rsi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
cmovo di, cx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -125
and bl, 76
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
movsx ecx, dil
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
cmovnle dx, cx
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], esi
adc ebx, 51
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rax
and edi, -102
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -1807520971
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
test dl, 114
mov ebx, 51969593
test ax, si
adc dx, 15
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdi
add dl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
sub dx, -12
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
test dl, -81
sub cl, 78
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
