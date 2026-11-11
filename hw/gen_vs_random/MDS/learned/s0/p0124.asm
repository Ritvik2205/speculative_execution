.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
btc dx, 67
test rcx, -613256812
and cx, -8
and dl, dil
btc dx, bx
jmp .bb_0.1
.bb_0.1:
xor rbx, 89
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 35
bt si, cx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
