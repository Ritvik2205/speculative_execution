.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
and bl, bl
or bl, -5
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
or rsi, 6
jmp .bb_0.1
.bb_0.1:
cmovb cx, dx
or rdi, 69
or al, -57
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], 69
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
