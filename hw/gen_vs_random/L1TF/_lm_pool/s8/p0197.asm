.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, sil
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
test dil, -126
sbb bl, sil
or sil, dil
jmp .bb_0.1
.bb_0.1:
xor al, sil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test ecx, 77
adc dl, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
