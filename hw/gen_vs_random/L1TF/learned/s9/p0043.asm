.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test sil, 29
test al, -70
or cl, -78
lea rcx, qword ptr [rbx + rsi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 33
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
sbb sil, dil
or dl, cl
sbb dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
