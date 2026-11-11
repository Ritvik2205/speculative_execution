.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
xor rcx, rax
or bl, al
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1913246407
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
or bl, bl
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
bts ebx, 197
adc cl, cl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 73
test al, 52
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and eax, edi
imul rsi, rsi
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
cmovno esi, edx
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
sbb rdx, -43
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rsi]
add al, 46 # instrumentation
adc ax, cx
not bx
xor ax, -22861
xchg ebx, eax
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
xor rsi, rdi
xor eax, -1772786275
sbb cl, 35
add dil, -84
sbb rdx, -43
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor al, dl
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
adc ebx, -5
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
xchg dl, dil
cmovo ebx, ecx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
test al, dl
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
test ecx, eax
btc di, 83
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
sbb edi, 107
cmovs rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
