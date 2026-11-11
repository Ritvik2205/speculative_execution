.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 10
cmovz bx, di
and rdx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rbx, rdx
and bl, bl
and cl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
or rdx, -109
btc rsi, rbx
btr cx, dx
bt rdx, rcx
btr ax, cx
cmovz rbx, rbx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 0
bt edx, eax
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
test cx, 401
or ebx, -15
and rax, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
