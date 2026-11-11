.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp rbx, rcx
cmp dl, cl
imul dl
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
add bl, 54
or cl, al
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
cmovle rdx, rax
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
test dx, 28394
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
cmovl esi, ecx
add cl, bl
and al, -12
cmp dl, 83
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
adc bl, al
xor rax, 1049851782
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
xor ax, si
sub cl, 92
xor dl, cl
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
btc rcx, rbx
or rdx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
cmovnz rbx, rsi
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
imul rdx, rdi
add cl, -33 # instrumentation
not dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
test esi, -222751961
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
cmovs rax, rdx
xchg cl, cl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
add al, 27 # instrumentation
mov bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
xchg rbx, rax
adc ax, -22258
add al, -32
and ax, -603
sub di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
