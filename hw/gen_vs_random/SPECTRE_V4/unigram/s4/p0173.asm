.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dx, dx
adc edx, -125
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
add dl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
mov rbx, 27
neg rax
adc cl, 111
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
sub al, al
and rbx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
neg sil
dec bl
test rcx, 21
test rsi, rdx
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
btc edi, ecx
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
sbb esi, edi
cmovl rsi, rcx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 83
xor dl, -123
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 18
add rcx, 32
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
add cl, 28 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
add al, 23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 42
cmovz ebx, eax
bt dx, 213
cmp dil, 101
or esi, 32
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 32
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
movsx ax, bl
imul edx
bt rcx, rcx
adc rax, rsi
inc edx
movzx rcx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
