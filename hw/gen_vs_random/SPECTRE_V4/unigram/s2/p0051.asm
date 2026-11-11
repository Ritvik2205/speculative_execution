.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
mov rbx, rcx
neg dx
test esi, 85
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
not ax
and eax, -24
xor dl, 14
cmovp si, di
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
sub cl, dl
add dl, -114 # instrumentation
cmovl dx, ax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 96
adc di, -110
cmovo rcx, rcx
add dl, -94 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
test dl, 19
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
sub cl, dl
sbb cx, 23
sub cl, cl
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
cmp dil, -124
test dil, 42
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
sbb dil, bl
cmovp si, bx
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 30
and rax, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rax]
add sil, 110 # instrumentation
movsx ax, sil
dec cl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
movzx rdx, di
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 25
and rdx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], si
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 22
add si, 4
adc esi, 90
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
cmovo edx, eax
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
xor al, cl
sub ecx, edx
sub dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
