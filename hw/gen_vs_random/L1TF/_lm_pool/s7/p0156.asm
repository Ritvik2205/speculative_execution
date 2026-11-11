.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 42
sbb dl, bl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
sub al, cl
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
cmovnp dx, si
btc cx, dx
jmp .bb_0.1
.bb_0.1:
test al, -56
sub sil, -99
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
