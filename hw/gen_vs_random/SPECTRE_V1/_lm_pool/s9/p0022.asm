.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], si
lea rsi, qword ptr [rcx + rcx + 62]
inc eax
adc bl, 102
mov dl, bl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], bl
jns .bb_0.2
jmp .exit_0
.bb_0.2:
cmp edi, 36
add edi, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
