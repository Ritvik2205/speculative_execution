.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 19
test sil, 29
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
xor dil, bl
add dl, sil
lea ecx, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
lea eax, qword ptr [rcx + rsi]
add al, -102
sbb cl, sil
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea ax, qword ptr [rcx + rsi + 77]
jmp .bb_0.4
.bb_0.4:
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
