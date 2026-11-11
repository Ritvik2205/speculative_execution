.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -117
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
cmovnz rdi, rax
imul edi, eax
mov al, al
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 123
sub bl, dl
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
adc ax, -22258
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
neg rax
cmovbe bx, cx
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -32
cmp rcx, rcx
xor rax, rsi
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
xor dl, dl
add eax, esi
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
test dx, 28394
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
adc ax, -10650
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
sub cl, -119
add bl, -38
cmovle rdx, rax
btc rcx, rbx
add cl, bl
xor rax, 93
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and ax, -4731
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
adc bl, al
and al, 82
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
add al, -112
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
