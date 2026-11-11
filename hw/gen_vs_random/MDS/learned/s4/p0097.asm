.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and al, 87
and cx, -8
test al, 127
and cl, 79
and ax, 339
test dx, 16353
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
or rdi, 21
test cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
