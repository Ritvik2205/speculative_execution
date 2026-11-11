.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 32
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 60
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
test sil, 29
jmp .bb_0.1
.bb_0.1:
add sil, 65 # instrumentation
cmovo rsi, rbx
lea bx, qword ptr [rax + rdi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
