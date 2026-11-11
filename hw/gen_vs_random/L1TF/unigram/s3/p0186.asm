.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cx, ax
add bl, 89 # instrumentation
sbb bl, sil
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
lea di, qword ptr [rsi + rsi + 73]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 38
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 72
and cl, 98
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
sbb bl, -88
and esi, 64
xor edi, edx
add dl, 47 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
or dil, -113
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], bx
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
