.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 98
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
mul ax
and rdi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdi]
and rdi, -2
adc ecx, -12
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
cmovnz di, dx
dec rdi
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
xor al, 69
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
add al, dil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 72
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 7
and sil, -49
and al, -36
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], ebx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
test bl, sil
and al, dl
sbb cl, 19
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
adc al, -58
cmovnz edi, ebx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
neg ebx
imul rdi, rax, 3
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
imul cl
add dl, -114 # instrumentation
cmovl cx, si
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdi], cx
adc bl, sil
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], ecx
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdi
cmovl rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
