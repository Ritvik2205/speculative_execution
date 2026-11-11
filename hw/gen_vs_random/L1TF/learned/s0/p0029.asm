.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 58
cmp rsi, 95
lea bx, qword ptr [rsi]
test al, -84
test al, -70
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 89
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
or al, cl
lea rdx, qword ptr [rax + rcx + 85]
adc dl, -12
and cl, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
