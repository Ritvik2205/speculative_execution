.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, dx
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
sbb bl, 79
xor bl, bl
and rax, -1128038253
adc ax, -27488
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, al
sbb bl, al
or al, dl
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
