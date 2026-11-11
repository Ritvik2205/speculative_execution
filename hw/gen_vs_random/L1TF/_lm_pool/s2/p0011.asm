.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
or dl, dl
lea edx, qword ptr [rdi]
lea di, qword ptr [rsi + rdi + 80]
test dl, 84
xor ax, -24879
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
