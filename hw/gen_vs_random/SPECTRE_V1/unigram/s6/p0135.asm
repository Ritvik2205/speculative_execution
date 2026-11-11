.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
xor al, al
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
or cx, 89
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], ax
cmovp dx, bx
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
add dl, -96 # instrumentation
cmovo edx, edx
cmovl ecx, ecx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], si
sub rax, -1628299544
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
add al, bl
and rax, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
