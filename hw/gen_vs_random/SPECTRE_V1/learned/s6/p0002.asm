.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 34
sub bl, -19
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
sbb eax, 2098460225
setns cl
sbb bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
cmp al, 77
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
sbb dil, dil
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
