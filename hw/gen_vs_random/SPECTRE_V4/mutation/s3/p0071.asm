.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
cmovno esi, edx
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
test di, -19523
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
add al, 46 # instrumentation
adc ax, cx
bts ax, 155
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -37
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1481110162
sbb cx, -114
or bl, al
imul rsi, rsi
not bx
xor rax, -117
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rsi]
and eax, edi
mov cl, bl
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
add al, 66 # instrumentation
cmovp ebx, ebx
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
cmovnz rdx, rcx
cmovb edi, eax
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 73
and rcx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 2
test al, -26
or bl, bl
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
bts ebx, 189
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
xchg rdi, rax
sub al, cl
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
xor rcx, rax
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
cmp eax, -2073187604
sbb rdx, 6
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
adc cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
