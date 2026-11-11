.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -16777
inc rsi
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
mov cl, cl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -117
neg rdi
adc cl, al
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
test al, dil
and rdi, 45
imul esi, edx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 5
test dl, -125
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
add rsi, -100
mov cl, bl
test rbx, 1219566903
or si, 85
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
cmp dx, di
cmovp di, di
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
bt rsi, rbx
sub rax, -1881584175
mov dl, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
xor cl, -73
test dl, cl
mov bl, -69
adc bl, cl
cmp ebx, -19
cmovl esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edx
adc eax, 1019803307
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
sub rax, 1294268026
cmovnz eax, eax
sbb al, -52
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
mov cl, dl
adc al, sil
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
btc rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
