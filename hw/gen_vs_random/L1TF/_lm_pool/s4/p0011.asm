.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 37
test bl, 12
or cx, 48
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
cmp ax, 7046
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
add dl, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 227030929
lea rdx, qword ptr [rcx]
or rax, -443578116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
