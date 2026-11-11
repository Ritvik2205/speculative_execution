.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
xor ax, 27703
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and ax, 37
bts edx, ecx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 121
not sil
test al, -56
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
or sil, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
