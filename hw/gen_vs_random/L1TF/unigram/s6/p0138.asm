.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -75
add al, -113 # instrumentation
mov rsi, 17
add dl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
lea rsi, qword ptr [rcx + rsi + 5]
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdx
xor edi, 28
lea rdx, qword ptr [rax + rax]
jmp .bb_0.1
.bb_0.1:
xor al, cl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 83
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 61
lea rcx, qword ptr [rcx + rax + 1]
add ecx, 89
setp sil
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
