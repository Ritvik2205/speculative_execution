.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
lea rdi, qword ptr [rsi + rbx]
lea rbx, qword ptr [rdx + rcx + 67]
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rcx]
add dl, al
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
