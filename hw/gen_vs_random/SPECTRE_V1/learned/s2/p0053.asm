.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
cmp rax, -1365488374
sub cl, -21
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
cmp dl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
lea ax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
