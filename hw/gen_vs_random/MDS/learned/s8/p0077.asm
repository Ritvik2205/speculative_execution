.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -3
test al, cl
not al
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
or rax, 1020005579
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or dl, al
or rax, 1461812833
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and al, 84
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 82
and al, -54
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
xor al, 55
and si, -121
jmp .bb_0.1
.bb_0.1:
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
