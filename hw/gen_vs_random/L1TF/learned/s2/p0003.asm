.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
test al, -70
jmp .bb_0.1
.bb_0.1:
adc bl, dil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 12
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
cmp si, 36
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and ax, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
