.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
lea dx, qword ptr [rbx + rcx + 62]
test sil, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], si
test edi, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
