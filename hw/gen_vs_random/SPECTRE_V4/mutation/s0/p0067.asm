.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 20236
test dl, bl
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
adc sil, -31
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
bts ecx, 0
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
or ebx, eax
test cx, cx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
or edx, 0
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
cmovbe dx, ax
xor al, 124
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or cx, dx
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
cmp al, cl
cmovle rcx, rdi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
test bl, -16
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
mov bl, 58
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
not cl
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 92
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
adc rax, 1690546225
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and ax, -6897
cmovno rcx, rax
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
test edi, -2098143765
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
