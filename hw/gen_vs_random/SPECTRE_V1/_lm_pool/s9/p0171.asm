.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 2
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
xchg edi, eax
xchg dil, al
xchg sil, cl
mov al, sil
inc ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
