.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 12
not al
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and ax, 339
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
xor cl, dl
test al, 91
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
xor al, 99
test cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
