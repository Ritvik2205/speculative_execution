.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, 57
adc ax, -26452
or sil, 3
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 50
dec bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
mul rdi
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 22
sub edx, 77
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
add dl, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
sub sil, dil
cbw
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
cwd
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 71
lea rbx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
