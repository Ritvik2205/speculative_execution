.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 7
xchg ebx, eax
and al, dil
sbb bl, dil
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 28
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
