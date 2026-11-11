.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and al, -68
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
lea dx, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
or cl, al
test eax, 899472326
and bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
