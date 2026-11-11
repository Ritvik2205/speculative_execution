.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
test rbx, 67
jmp .bb_0.2
.bb_0.2:
and cx, -79
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 82
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
