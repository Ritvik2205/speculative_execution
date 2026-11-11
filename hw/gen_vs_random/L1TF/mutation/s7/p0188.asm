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
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
setl cl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
xor al, bl
imul dx, di, -95
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -82
test eax, esi
movzx ax, bl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
