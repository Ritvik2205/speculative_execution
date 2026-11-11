.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
cmp rcx, 14
lea rax, qword ptr [rdi + rcx + 14]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rax
lea cx, qword ptr [rdx + rdi]
lea ax, qword ptr [rdx + rcx + 43552]
lea esi, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
