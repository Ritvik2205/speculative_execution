.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
xor cl, 24
or cl, bl
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
not cl
jmp .bb_0.1
.bb_0.1:
or al, bl
xor dil, dl
test al, 22
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rax, 4
or al, cl
and ax, 19224
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
