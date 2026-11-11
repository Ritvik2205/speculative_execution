.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
sub sil, -50
add eax, ecx
cmp bl, dil
cmp rbx, 9
cmovb ax, ax
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 94
sbb al, al
mul edx
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
sbb sil, sil
cmovp rdi, rsi
add dl, 41
add dil, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
cmp dil, -124
add sil, 56 # instrumentation
cmovle rdx, rsi
cmovnbe rax, rsi
sub esi, ebx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 14
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 10
add bl, -72
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
sub al, 99
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
xchg ebx, ecx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 24
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 65
cmovnbe rsi, rsi
imul sil
dec rcx
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 42
movzx eax, dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 65
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
xor al, cl
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
not dx
xor sil, 56
btc ax, di
xor bx, cx
bts esi, 241
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 59
or edi, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
