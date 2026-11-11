.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
dec cx
adc rax, 1542637830
cmovnb dx, dx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
add cl, -82 # instrumentation
sbb cx, di
sbb edi, 31
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi]
xor edi, 87
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and sil, -49
add dl, 31 # instrumentation
cmovnl dx, dx
sub esi, ebx
not rax
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
add cl, -32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rcx]
sbb rdx, rbx
xchg rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
bts esi, ecx
and rsi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
add cl, -21 # instrumentation
adc rdx, 23
cmovnb edi, esi
test rcx, -2118888343
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
adc eax, -1513455903
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rcx]
cmovnbe rax, rcx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
and rsi, 98
or dl, bl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], dx
mov rdi, rbx
or cl, 21
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
movzx rdi, al
or dl, 56
cmovs rcx, rbx
btc rax, 21
test dl, 19
xor dl, 58
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 94
not eax
sub dl, dl
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
