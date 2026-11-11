.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
add bl, 65 # instrumentation
cmovnp di, bx
and si, 68
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 94
bts rax, 157
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], cx
cmp sil, 88
bts edx, 85
cmovnb edi, edx
or dx, 79
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
imul rax, rdx, 10
test edi, -1249897727
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
sbb bl, 57
sub rax, -701741274
or ecx, edx
xor sil, 56
xchg sil, sil
xor dl, 34
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
add bx, 110
test sil, 19
cmovnbe rax, rcx
cmp bl, 13
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
xor cl, dil
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 41
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
imul bx
xor sil, sil
cmp dl, cl
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
cmovnl rdi, rdi
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
sub dl, bl
add cl, 51
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 18
mul edx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
