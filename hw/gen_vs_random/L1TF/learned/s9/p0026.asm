.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 67
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
test eax, 645518295
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
jmp .bb_0.1
.bb_0.1:
cmp ax, -21455
and bl, cl
lea ax, qword ptr [rdx + rdi + 15]
xor al, 89
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
jmp .bb_0.2
.bb_0.2:
lea rcx, qword ptr [rax + rbx]
btc si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
