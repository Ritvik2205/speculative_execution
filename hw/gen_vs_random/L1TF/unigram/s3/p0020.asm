.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edi, 57
add dl, 47 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
add al, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 78
jmp .bb_0.1
.bb_0.1:
neg rdx
cmovnz ax, cx
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
cdq
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
mov bx, si
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
