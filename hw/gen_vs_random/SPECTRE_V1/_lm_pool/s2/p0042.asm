.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
inc rax
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and bl, 124
jmp .bb_0.1
.bb_0.1:
inc ecx
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
lea rbx, qword ptr [rcx + rsi + 49]
test cl, -120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
