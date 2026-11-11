.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rbx]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 47
bt eax, 61
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
adc dl, -12
add al, al
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
cmovno rbx, rdx
lea ecx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
