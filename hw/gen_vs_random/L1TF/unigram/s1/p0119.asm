.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg dl
sbb dx, 28
add sil, al
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
cmovl rsi, rbx
jmp .bb_0.1
.bb_0.1:
imul al
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
cmp al, -119
or cl, -78
cmp cl, 57
or dx, 1 # instrumentation
dec rax
add dl, 76 # instrumentation
sbb si, 21
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 14
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
adc dx, 56
adc ecx, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
