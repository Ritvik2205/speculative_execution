.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 53
add dil, 82
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
cmovnle ax, bx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
not al
cmp bx, 77
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
sbb eax, ebx
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 23
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
add al, 118
and sil, dl
cmp dx, 84
adc ebx, 117
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
xor dl, 86
cmp cl, dil
test bl, dl
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
cmovnbe dx, cx
sbb sil, 108
add sil, 26
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
btc rdi, 167
test cl, -89
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 65
movzx edi, al
and rsi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
add cl, 58
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 100
test cl, dil
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
add al, sil
test edi, -1249897727
neg rbx
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
add bl, -115 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 5
cmovnl rdi, rdx
btc dx, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
