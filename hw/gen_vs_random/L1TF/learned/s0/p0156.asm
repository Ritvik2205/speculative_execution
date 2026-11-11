.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -78
cmp rcx, 92
xor al, 89
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
cmp ax, -6940
and dl, 59
lea eax, qword ptr [rcx + rsi]
sbb rax, 1131444263
adc cl, -34
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
