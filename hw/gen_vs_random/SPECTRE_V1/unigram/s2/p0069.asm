.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
inc dl
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 95
movzx edx, si
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -25 # instrumentation
sbb ax, bx
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
nop
inc bl
imul edi, ecx
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
