.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, -2111618709
test dx, 28394
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
adc ax, 29444
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
imul dl
sub di, bx
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
imul rdx, rdi
and ax, 13045
add cl, -33 # instrumentation
not dl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
and al, -1
xor dl, dl
cmovp rbx, rcx
add al, 27 # instrumentation
mov bl, dl
or cl, al
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
cmovle rdx, rax
xchg cl, cl
cmovs rax, rdx
xchg rbx, rax
cmp dl, cl
add al, -1
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
sub cl, 18
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
cmp dl, 83
btc rcx, rbx
cmovnz rbx, rsi
xor ax, si
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rax
xor rax, 944027678
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
add cl, bl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
adc bl, al
add bl, -59
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
xor dl, cl
or rdx, rbx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
cmovl esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
