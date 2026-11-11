.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
setno al
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
sub al, -3
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 4
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
test al, -82
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
