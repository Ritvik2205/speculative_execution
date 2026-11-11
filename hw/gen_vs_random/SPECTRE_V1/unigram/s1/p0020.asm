.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
add dl, 52 # instrumentation
sets cl
cmovl dx, cx
and cl, dil
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
add al, 45 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle dx, bx
cmovbe dx, di
and rcx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edx
imul ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
add dl, -16 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
add cl, 45 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
