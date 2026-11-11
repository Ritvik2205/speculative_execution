.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
test sil, 97
cmovno si, bx
setnle dl
cmovle dx, si
jns .bb_0.1
jmp .exit_0
.bb_0.1:
adc si, 6
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
cmovs cx, ax
setns al
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
