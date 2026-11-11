.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
sub bl, 15
lea rax, qword ptr [rdx + rcx + 60]
or ax, -18131
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
cmovbe edi, ecx
sub al, 26
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rax + rsi + 60]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
sbb cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
