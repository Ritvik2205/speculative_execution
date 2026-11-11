.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
cmovp ebx, ebx
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 11
xor dl, dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
add cx, cx
add sil, sil
not rdi
and rdi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdi]
xchg esi, edx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
add cl, 56 # instrumentation
cmovle rbx, rcx
bts bx, 84
and bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
or esi, 89
sub dl, 43
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
xor al, cl
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 26
or si, dx
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
add si, 4
test bl, dil
test sil, bl
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rax
add cl, -82 # instrumentation
sbb ax, bx
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
movzx si, dil
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
test al, 80
add cl, 119 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
add di, -74
adc cl, dl
bts cx, 8
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 35
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
