.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, 28394
xor ax, si
sub di, bx
add al, 27 # instrumentation
mov bl, dl
btc rcx, rbx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
add cl, bl
sub cl, -51
xchg rbx, rax
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
xchg cl, cl
cmp dl, 83
cmovl esi, ecx
add cl, -33 # instrumentation
not dl
xor rax, 944027678
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 69
cmp dl, cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
xor dl, dl
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
add al, -127
or cl, al
and al, -118
imul dl
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
cmovle rdx, rax
test esi, -2111618709
and ax, 16313
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
cmovp rbx, rcx
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
cmovs rax, rdx
cmovnz rbx, rsi
adc ax, 17267
imul rdx, rdi
or rdx, rbx
xor dl, cl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rax
adc bl, al
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
add bl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
