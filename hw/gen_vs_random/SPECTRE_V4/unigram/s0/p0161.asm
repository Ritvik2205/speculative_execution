.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
cmp rdi, 28
add dil, 105
and al, bl
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], -115
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 98
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
and dl, -11
cmp si, 109
adc al, al
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], esi
and rax, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rax]
cmovle rsi, rax
xor dil, -23
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
mov bl, cl
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
bts ax, 155
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edx
sub bl, -98
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
and cx, cx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 37
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
test bl, -29
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
sub bx, 24
sub cl, sil
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
cmovp rdx, rdi
cmovnb eax, eax
add dl, 92 # instrumentation
cmovnl rbx, rdx
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
sub rdi, -34
cmp al, -53
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
