.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
imul rsi, rsi
and eax, edi
adc cl, cl
cmovnz rdx, rcx
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
not bx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
xor rax, -117
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
sub al, cl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
or bl, bl
test al, -38
mov cl, bl
test di, -19523
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
bts ax, 159
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 2
xor rcx, rax
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 73
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
sbb rdx, 6
add al, 46 # instrumentation
adc ax, cx
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
bts ebx, 189
sub dl, dl
cmp eax, 512128713
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1481110162
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
cmovno esi, edx
and rcx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
cmovb edi, eax
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
xchg rdi, rax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
or bl, al
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -37
add al, 66 # instrumentation
cmovp ebx, ebx
sbb cx, -114
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
