.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rdx, cl
inc bl
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
xor al, cl
add dl, -114 # instrumentation
cmovl ax, di
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
sbb cl, 20
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
adc al, dil
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
cmovnb ecx, esi
cmovnbe cx, di
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 80
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rbx
cmovnbe rdx, rbx
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
btc bx, 48
mul dl
cmovb dx, dx
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
add cl, cl
add bl, al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dil
add dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
test dl, sil
sbb sil, 108
xor sil, 56
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
cmp eax, -92285311
add dl, -10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add al, 122 # instrumentation
cmovns eax, edi
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
sbb dl, -99
and rbx, 69
adc dx, dx
adc dl, dil
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
