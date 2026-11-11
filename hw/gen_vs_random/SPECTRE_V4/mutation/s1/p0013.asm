.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, dl
sbb cx, -114
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 2
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
add al, 66 # instrumentation
cmovp ebx, ebx
xor rcx, rax
sub al, cl
and rcx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rcx]
sbb rdx, -43
xor rax, -98
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
cmovb edi, eax
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
cmovnz rdx, rcx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rsi]
test al, 57
xchg rdi, rax
cmovno esi, edx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
add al, 46 # instrumentation
adc ax, cx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -37
or bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
test di, -19523
or bl, al
adc cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 73
not bx
mov cl, bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1481110162
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
cmp eax, -2073187604
bts ax, 155
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
and eax, edi
bts ebx, 197
imul rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
