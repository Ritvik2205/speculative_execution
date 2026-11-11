.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc eax, eax
and ax, 26813
or eax, -401020526
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
sub al, 26
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
jmp .bb_0.1
.bb_0.1:
sub al, dl
sbb sil, 19
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
or ax, 11821
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
