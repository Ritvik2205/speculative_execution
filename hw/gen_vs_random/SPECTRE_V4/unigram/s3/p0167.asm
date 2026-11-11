.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
xor di, ax
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -87
sbb edx, 80
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
and rbx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
movzx si, sil
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], ecx
test bx, 24072
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
and ecx, eax
and cl, -118
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 93
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
cmp dl, sil
cmovb eax, ecx
mov si, -8007
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
neg rsi
cmp rdi, 28
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
sub dl, -16
imul edx, ecx
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 75
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rsi
add dl, -12 # instrumentation
cmovp eax, edx
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and cl, -128
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
sub rdi, 105
cmp eax, 89
and ax, -23308
imul si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
