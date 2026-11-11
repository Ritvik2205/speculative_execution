.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
sub al, bl
mov dil, dl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
test al, 34
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
and sil, 11
sub al, bl
lea rdi, qword ptr [rcx + rsi + 73]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
