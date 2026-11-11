.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 24
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 5
xor dl, bl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
test edx, -1561252782
jmp .bb_0.1
.bb_0.1:
btc ax, 38
and bl, 68
jmp .bb_0.2
.bb_0.2:
test rdx, 5
bt di, bx
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
test al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
