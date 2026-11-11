.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -95 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and al, -68
sub cl, 86
or eax, 287965578
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea eax, qword ptr [rsi]
xor eax, 965442135
sub al, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
