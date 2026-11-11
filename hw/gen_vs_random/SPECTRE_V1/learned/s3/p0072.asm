.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
sub dil, -111
or bl, dil
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
lea ax, qword ptr [rdx + rcx + 43552]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
test al, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
