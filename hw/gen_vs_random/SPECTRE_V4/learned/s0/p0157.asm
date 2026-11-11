.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 11
or di, 0b1000000000000000 # instrumentation
bsf si, di
test dl, dil
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
xor bx, dx
sbb dl, sil
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
add rcx, rdi
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
test cl, dl
or cl, sil
setle dil
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdi]
sub dl, dil
xor sil, dl
xor rsi, -3
cmp dil, sil
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
btc bx, si
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
cmp ax, -906
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
adc al, bl
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], dx
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 57
add al, bl
xor edx, esi
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 22
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 13
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
cmovl rdi, rdx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
mul rbx
add dl, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
