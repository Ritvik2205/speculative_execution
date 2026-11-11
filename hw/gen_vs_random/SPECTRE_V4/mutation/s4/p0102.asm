.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 46 # instrumentation
adc ax, cx
imul rsi, rsi
bts ebx, 189
not bx
or bl, bl
and eax, edi
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rcx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 73
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rsi]
cmovno esi, edx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
or bl, al
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 2
sbb cx, 29
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -37
add al, 66 # instrumentation
cmovp ebx, ebx
sub al, cl
test di, -19523
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
mov cl, bl
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
sbb rdx, 6
cmp eax, 2
cmovnz rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
cmovb edi, eax
bts ax, 155
xor rax, -1522567562
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
sub dl, dl
xor rcx, rax
test al, 18
xchg rdi, rax
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 848492318
adc cl, cl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
