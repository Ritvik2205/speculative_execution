.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 49
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
or dil, -113
cmp si, 44
test al, 15
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
jmp .bb_0.2
.bb_0.2:
lea rsi, qword ptr [rcx + rdx]
sbb ebx, 9
test al, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
