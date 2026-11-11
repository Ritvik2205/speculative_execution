.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, cx
or cx, ax
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rax
cdq
mov bx, ax
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], 43
xor al, 89
lea rcx, qword ptr [rax]
imul bx, di, -32
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
add cl, 107 # instrumentation
cmovnl ax, ax
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
imul dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
