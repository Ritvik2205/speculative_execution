.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 52
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
or di, bx
sbb ecx, 25
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 33
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmp rax, -120490246
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ecx
mov edx, ebx
xor al, 29
xor al, 69
and rsi, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 68
add bl, dil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
bts bx, dx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and al, -127
and dl, dil
and rcx, -102
jmp .bb_0.1
.bb_0.1:
and sil, bl
add ebx, 3
sub dl, al
add rdi, -94
sbb eax, -1688332460
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdi], ax
imul cl
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
setp bl
cmp ax, -15409
cmp dl, al
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
or eax, -1434249782
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
