.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 98 # instrumentation
inc cl
adc rdi, 127
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], cx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
movsx edx, al
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 118
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
cmovnz cx, bx
jmp .bb_0.2
.bb_0.2:
add dl, 22
and cl, dl
add rax, 1633593912
add bl, bl
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
cmovle ecx, edi
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], -1
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
add bl, -124 # instrumentation
setnz bl
bswap rdi
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
cmp cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
