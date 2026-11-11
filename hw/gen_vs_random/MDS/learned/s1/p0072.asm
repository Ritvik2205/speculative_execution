.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and ax, 31082
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
or cl, 30
btc bx, 104
test al, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
