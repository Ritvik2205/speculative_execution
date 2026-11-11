.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edi, 3
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
sub al, -128
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 75
and dil, dil
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
neg bl
or edx, -118
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], cx
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
mov cl, cl
cmp di, -8
sub rdi, -52
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
cmp edx, edx
add cl, -58 # instrumentation
cmovnz ecx, edx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
cmovp ax, ax
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
sub rax, rax
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], 16
and al, dil
xor al, 23
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
add dl, -8
or bx, -33
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
add al, 23 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 64
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
bts eax, 14
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
cmovnb rdx, rax
adc rdi, 64
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 50
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
cmovp rdx, rsi
adc dl, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
