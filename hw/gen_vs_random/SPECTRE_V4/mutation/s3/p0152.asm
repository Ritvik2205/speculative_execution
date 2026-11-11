.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
and rcx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rcx]
not bx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
sub al, cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1481110162
and eax, edi
cmovnz rdx, rcx
cmovno esi, edx
sbb cx, 29
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
adc cl, cl
or bl, al
cmovb edi, eax
sub dl, dl
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
bts ax, 159
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
test di, -19523
xor rcx, rax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -37
add al, 46 # instrumentation
adc ax, cx
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
cmp eax, -813838876
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 73
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
imul rsi, rsi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rsi]
add al, 66 # instrumentation
cmovp ebx, ebx
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
mov cl, bl
sbb rdx, 6
xor rax, -224991767
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 2
test al, 52
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
bts ebx, 189
xchg rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
