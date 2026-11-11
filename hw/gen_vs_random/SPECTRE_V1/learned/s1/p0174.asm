.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
sub cl, bl
test ax, 636
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
jb .bb_0.2
jmp .exit_0
.bb_0.2:
adc dil, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
