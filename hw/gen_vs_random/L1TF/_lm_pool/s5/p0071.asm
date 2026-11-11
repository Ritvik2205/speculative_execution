.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
cmovle rdi, rcx
or rax, -443578116
add al, al
jmp .bb_0.2
.bb_0.2:
lea di, qword ptr [rdx]
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
