.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
sub bl, -6
or al, 100
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
cmp al, bl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 117
bt edi, 121
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
