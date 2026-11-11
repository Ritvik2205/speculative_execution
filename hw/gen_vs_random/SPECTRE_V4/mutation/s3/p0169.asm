.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
and al, -87
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
add al, 27 # instrumentation
mov bl, dl
cmovl esi, ecx
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
or rdx, rbx
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
xor ax, si
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
add cl, -33 # instrumentation
not dl
adc ax, -10650
imul dl
sub cl, -94
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
xor dl, dl
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 69
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
test dx, 28394
test esi, -2111618709
add cl, bl
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
xchg rbx, rax
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
btc rcx, rbx
cmp dl, cl
cmovle rdx, rax
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
or cl, al
sub di, bx
cmovs rax, rdx
cmp dl, 83
cmovnz rbx, rsi
xor rax, -117
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
adc bl, al
xchg cl, cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rax
add bl, -38
imul rdx, rdi
add al, -6
cmovp rbx, rcx
and ax, -14374
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
