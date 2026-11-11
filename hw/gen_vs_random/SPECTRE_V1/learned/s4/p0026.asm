.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
adc bl, -76
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
xor sil, -33
sbb bl, -41
and al, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, al
lea ax, qword ptr [rcx + rsi + 78]
sbb cl, 105
cmp al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
