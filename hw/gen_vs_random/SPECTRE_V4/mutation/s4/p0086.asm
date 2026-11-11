.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
add bl, -59
xor rax, -224991767
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
xor dl, dl
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
btc rcx, rbx
test dx, 28394
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
adc bl, al
test esi, -222751961
add al, -4
and al, 41
cmovp rbx, rcx
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
cmp dl, cl
xchg cl, cl
adc ax, -22258
add cl, -33 # instrumentation
not dl
sub di, bx
xchg rbx, rax
cmovs rax, rdx
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
cmovnz rbx, rsi
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
sub cl, -119
imul rdx, rdi
cmp dl, 23
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rax
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
and ax, -4731
add cl, bl
cmovle rdx, rax
add al, 27 # instrumentation
mov bl, dl
or rdx, rbx
or cl, al
imul dl
xor ax, si
cmovl esi, ecx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
