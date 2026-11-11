.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
or rax, -141551502
xor ax, -5889
test bl, -114
or ax, -4210
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
bt si, ax
xor ax, -16696
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
