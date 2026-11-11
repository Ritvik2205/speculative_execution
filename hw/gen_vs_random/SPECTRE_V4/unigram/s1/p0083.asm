.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 86
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
sbb al, cl
or bl, 41
sbb dl, sil
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 38
xor dl, 24
imul rbx, rdi, 5
and rcx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rcx]
sub dil, sil
sub dl, 43
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rcx]
add dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 98
cmovnl rdi, rsi
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 47
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
sbb edx, 63
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
imul bx, dx
movzx edx, cl
test ax, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
inc al
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
mov al, sil
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
add sil, 110 # instrumentation
movsx bx, sil
test di, dx
mul rbx
and rax, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rax]
add bl, -109 # instrumentation
sbb edx, 33
cmp di, 81
imul dl
add sil, dil
xor al, 69
xor al, 59
cmovnl rdi, rdx
mul ax
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdi
cmovns bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
