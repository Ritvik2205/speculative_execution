.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, eax
or cl, -98
seto sil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -69
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], bl
bswap rbx
cmp bx, ax
sbb bl, -41
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
