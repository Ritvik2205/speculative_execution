.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 12
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
sub al, cl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
lea bx, qword ptr [rcx]
btc bx, si
jmp .bb_0.1
.bb_0.1:
or sil, -44
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
add al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
