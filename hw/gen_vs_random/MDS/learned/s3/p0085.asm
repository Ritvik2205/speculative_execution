.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo dx, bx
and dil, dil
and al, -55
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and al, bl
test al, 22
and rax, -2058103810
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
or rax, -1523798580
xor al, cl
btc di, 164
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
