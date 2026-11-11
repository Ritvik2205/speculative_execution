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
test al, 27
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
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
sbb ax, 18812
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
cmp rsi, 22
dec si
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -652712956
and al, dl
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -25
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
cmovp rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], -27
add cl, -27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 4
or eax, -863161215
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
