.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
cmovo edx, ecx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
btr ax, si
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
bts si, ax
neg ax
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
adc dil, 38
cmp eax, 512128713
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], ax
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], si
sub al, 11
test cl, dil
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edx
adc al, -59
and bx, cx
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
add al, dil
sub bl, cl
cmp cx, 0
cmovnz rdx, rdi
sbb si, si
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
bts bx, dx
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdx]
imul ebx, esi
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 88
bt cx, 31
xor rcx, -111
adc cl, dil
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
add edi, 2
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
imul sil
cmovl rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
