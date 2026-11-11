.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, -558243208
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovp eax, ebx
btc rsi, rdi
lea bx, qword ptr [rsi + rax]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
dec rcx
xor rbx, rdx
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add dl, cl
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 92
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
imul bl
add bl, al
imul rdx, rdi
and dl, 84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
adc sil, 23
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
and dl, al
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
bts ecx, 67
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
btc rbx, rcx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
cmovnp ecx, ebx
and al, cl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 93
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
cmovnbe edi, esi
test dl, 19
adc al, cl
test eax, 1561062795
and sil, -49
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
adc dil, dil
not dx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
or eax, -1434249782
cmovb rax, rdi
bts edx, edx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
