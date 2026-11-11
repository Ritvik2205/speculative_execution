.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 88
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
test dl, 84
imul cx, di, -104
cmovno rcx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 10
or rbx, 18
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
cmovbe rax, rcx
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
add rax, 1633593912
bt rsi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
