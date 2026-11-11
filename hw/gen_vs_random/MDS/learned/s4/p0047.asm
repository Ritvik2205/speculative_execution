.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
test ecx, -1843375753
jmp .bb_0.1
.bb_0.1:
test dl, 27
and rax, -978188247
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
or ax, 85
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
or al, al
and al, 14
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
