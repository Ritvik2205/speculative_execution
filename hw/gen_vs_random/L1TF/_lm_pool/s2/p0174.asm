.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, bx
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
lea ecx, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
test cl, 47
add cl, cl
jmp .bb_0.2
.bb_0.2:
test dl, -37
setp dil
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 50
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
