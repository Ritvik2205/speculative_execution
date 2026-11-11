.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 31082
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
btr dx, ax
or al, -61
test cl, bl
or cl, cl
and cl, -111
or al, cl
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and dil, bl
or rbx, -77
test edx, -372470678
or bl, -62
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
