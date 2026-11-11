.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 77
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
test bl, dl
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
btc ax, dx
cmovnz di, bx
adc eax, -79
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
bt eax, 84
sbb ax, -26881
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
btr ecx, edi
cmp al, 114
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
bt rax, rsi
adc eax, -1513455903
bt ebx, edx
cmp sil, 88
cmovnp si, cx
test bl, cl
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
btc rbx, rsi
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rsi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rsi]
adc bl, sil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
sbb al, -47
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], ecx
mul cl
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
adc bl, cl
test edi, -1249897727
and si, 68
xor esi, ecx
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
add rdi, rax
dec bl
xor eax, -437098167
not eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
