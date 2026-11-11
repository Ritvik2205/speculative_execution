.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
not eax
setns cl
cmp sil, al
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
test sil, 29
jmp .bb_0.1
.bb_0.1:
or dil, -113
or ax, -18131
or sil, dl
adc al, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
