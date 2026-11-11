.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
cmp eax, 512128713
dec bl
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
adc ax, -22258
imul si, ax, -75
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
cmp eax, -2073187604
sub sil, 71
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
btr rdx, rsi
mul dx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
cmovnbe edi, esi
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
add al, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
bts rdi, 49
add bl, -49
cmovnbe eax, esi
cmp esi, 123
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
adc ax, 25365
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
sub cl, -127
add bl, 54
cmovle rdx, rax
btc rcx, rbx
add cl, bl
xor rax, -111081832
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and ax, 16313
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
adc bl, al
and al, -1
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
add al, -4
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
