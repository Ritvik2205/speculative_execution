.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx di, dil
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
cmovle bx, ax
sbb al, dil
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
movsx rsi, cx
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
mov edi, ecx
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
or rbx, 67
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
